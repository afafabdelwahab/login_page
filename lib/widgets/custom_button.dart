import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double textSize;
  final Color textColor;
  final VoidCallback onPressed;

  CustomButton(
      {required this.text,
      this.textSize = 15,
      this.textColor = Colors.blue,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50), // Button with full-width
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: textSize, // Sets the size of the button text
        ),
      ),
    );
  }
}
