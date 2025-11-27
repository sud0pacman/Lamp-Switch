import 'package:flutter/material.dart';

class SizeTabs extends StatefulWidget {
  final Function(SizeEnum size) onSizeSelected;

  const SizeTabs({super.key, required this.onSizeSelected});

  @override
  State<SizeTabs> createState() => _SizeTabsState();
}

class _SizeTabsState extends State<SizeTabs> {
  SizeEnum selected = SizeEnum.M;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: LayoutBuilder(
        builder: (context, constraints) {
          double itemWidth = constraints.maxWidth / SizeEnum.values.length;
          int selectedIndex = SizeEnum.values.indexOf(selected);

          return Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                left: selectedIndex * itemWidth,
                bottom: 0,
                child: Container(
                  width: itemWidth,
                  height: 3,
                  color: const Color(0xff4A0A05),
                ),
              ),

              Row(
                children: SizeEnum.values.map((e) {
                  return buildTabItem(e, itemWidth);
                }).toList(),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget buildTabItem(SizeEnum size, double width) {
    bool isActive = selected == size;

    return InkWell(
      onTap: () {
        setState(() => selected = size);
        widget.onSizeSelected(size);
      },
      child: Container(
        width: width,
        alignment: Alignment.center,
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 200),
          style: TextStyle(
            fontSize: 18,
            fontWeight: isActive ? FontWeight.bold : FontWeight.w500,
            color: isActive ? const Color(0xff4A0A05) : Colors.black54,
          ),
          child: Text(size.name),
        ),
      ),
    );
  }
}


enum SizeEnum {
  S(1),
  M(2),
  L(3);

  final int size;
  const SizeEnum(this.size);
}
