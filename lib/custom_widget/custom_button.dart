import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String MyButton;
  final VoidCallback onPressed;
  final Color backgroundcolor;
  final Color meraColor;
  final double borderRadius;
  final FontWeight bold;
  final EdgeInsetsGeometry padding;

  const CustomButton({
    super.key,
    required this.MyButton,
    required this.onPressed,
    this.backgroundcolor = Colors.yellow,
    this.meraColor = Colors.white,
    this.borderRadius = 12.0,
    required this.bold,
    this.padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundcolor,
        foregroundColor: meraColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        padding: padding,
      ),
      onPressed: onPressed,
      child: Text(MyButton),
    );
  }
}
