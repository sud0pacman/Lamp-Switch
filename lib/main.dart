import 'package:flutter/material.dart';
import 'package:switcher_animation/repository/my_repository.dart';
import 'package:switcher_animation/widgets/image_view_screen.dart';
import 'package:switcher_animation/widgets/primary_app_bar.dart';
import 'package:switcher_animation/widgets/primary_switcher.dart';
import 'package:switcher_animation/widgets/size_tab_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Image Switcher',
      theme: ThemeData(primaryColor: Color(0xff4A0A05)),
      debugShowCheckedModeBanner: false,
      home: const LampGrid(),
    );
  }
}

class LampGrid extends StatefulWidget {
  const LampGrid({super.key});

  @override
  State<LampGrid> createState() => _LampGridState();
}

class _LampGridState extends State<LampGrid> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fade;
  bool isOn = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 400));

    _fade = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  void toggle() {
    if (isOn) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
    setState(() => isOn = !isOn);
  }

  Color backgroundColor = Colors.white;
  Color myColor = const Color(0xffDCD8D0);
  SizeEnum selectedSize = SizeEnum.M;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isOn ? myColor : Colors.white,
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 950),
        curve: Curves.easeInOut,
        color: isOn ? myColor : Colors.white,
        child: Column(
          children: [
            PrimaryAppBar(),
            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All Lighting",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "MierBold",
                      color: Color(0xff4A0A05),
                    ),
                  ),

                  CustomSwitcher(
                    value: isOn,
                    onChanged: (_) {
                      toggle();
                    },
                  ),
                ],
              ),
            ),

            SizeTabs(
              onSizeSelected: (newValue) {
                setState(() => selectedSize = newValue);
              },
            ),

            const SizedBox(height: 6),

            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: selectedSize.size,
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 16.0,
                  childAspectRatio: 0.6,
                ),
                padding: const EdgeInsets.all(16.0),
                itemCount: lamps.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            final width = constraints.maxWidth;
                            final height = constraints.maxHeight;

                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ImageViewScreen(
                                      heroTag: 'lamp_$index',
                                      imageAsset: isOn
                                          ? lamps[index].onImage
                                          : lamps[index].offImage,
                                    ),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: 'lamp_$index',
                                child: AnimatedBuilder(
                                  animation: _controller,
                                  builder: (context, _) {
                                    return Stack(
                                      fit: StackFit.expand,
                                      children: [
                                        Opacity(
                                          opacity: 1 - _fade.value,
                                          child: Image.asset(
                                            lamps[index].offImage,
                                            fit: BoxFit.cover,
                                            width: width,
                                            height: height,
                                          ),
                                        ),
                                        Opacity(
                                          opacity: _fade.value,
                                          child: Image.asset(
                                            lamps[index].onImage,
                                            fit: BoxFit.cover,
                                            width: width,
                                            height: height,
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      const SizedBox(height: 6),
                      SizedBox(
                        height: 60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              lamps[index].title,
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Mier",
                                color: const Color(0xff4A0A05).withValues(alpha: .9),
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 6),
                            Spacer(),
                            Text(
                              "From \$${lamps[index].price}",
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Mier",
                                color: const Color(0xff4A0A05).withValues(alpha: .9),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
