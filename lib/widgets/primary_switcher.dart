import 'package:flutter/material.dart';

class CustomSwitcher extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const CustomSwitcher({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Switch(
      padding: EdgeInsets.zero,
      value: value,
      onChanged: onChanged,
      trackOutlineColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return Colors.grey.withValues(alpha: 0.0);
        }
        if (states.contains(WidgetState.selected)) {
          return Colors.transparent;
        }        
        return Colors.transparent;
      }),
      trackColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return Color(0xff4A0A05);
        }
        return Colors.grey.shade300;
      }),
      thumbColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.white60;
        }
        return Colors.white60;
      }),
    );
  }
}
