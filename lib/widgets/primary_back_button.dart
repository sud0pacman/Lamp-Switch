import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundBackButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const RoundBackButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: onPressed ?? () {},
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(CupertinoIcons.back, color: Color(0xff4A0A05), size: 26),
      ),
    );
  }
}
