import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final bool filled;
  final Color? fillColor;
  final IconData? prefixIcon;

  const MyTextField({
    super.key,
    required this.hint,
    this.controller,
    this.obscureText = false,
    this.keyboardType,
    this.inputFormatters,
    this.filled = false,
    this.fillColor,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        hintText: hint,
        filled: filled,
        fillColor: fillColor,
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
        border: const OutlineInputBorder(),
      ),
    );
  }
}