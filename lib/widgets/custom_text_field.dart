import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Color backgroundColor;
  final Color textColor;
  final double textSize;
  final Color labelColor;
  final bool isPassword;
  final String? Function(String?)? validator;

  CustomTextField({
    required this.controller,
    required this.label,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.textSize = 28.0,
    this.labelColor = Colors.blue,
    this.isPassword = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: labelColor, // Sets the color of the label
        ),
        filled: true,
        fillColor: backgroundColor,
        border: OutlineInputBorder(),
      ),
      style: TextStyle(
        color: textColor, // Sets the color of the text
        fontSize: textSize, // Sets the size of the text
      ),
      validator: validator,
    );
  }
}
