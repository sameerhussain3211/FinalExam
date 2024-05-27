import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final Color? focusColor; // Optional argument for focus color
  final Color? textColor; // Optional argument for text color
  final Color? backgroundColor; // Optional argument for background color

  const Btn({
    Key? key,
    required this.title,
    this.onPressed,
    this.focusColor,
    this.textColor,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(title, style: TextStyle(color: textColor ?? Colors.black)),
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.blue,
      ),
    );
  }
}
