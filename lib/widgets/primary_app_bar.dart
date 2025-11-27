import 'package:flutter/material.dart';
import 'package:switcher_animation/widgets/primary_back_button.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor;
  const PrimaryAppBar({super.key, this.backgroundColor = Colors.transparent});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 16),
          const RoundBackButton(),
          const Spacer(),
          Text(
            'In Common With',
            style: TextStyle(fontSize: 26, fontFamily: "MierBold", color: const Color(0xff4A0A05)),
          ),
          const Spacer(),
          const SizedBox(width: 48),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 56);
}
