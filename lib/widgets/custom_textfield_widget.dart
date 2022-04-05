import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final Function(String) onChange;
  final String label;
  final bool obscureText;

  const CustomTextFieldWidget({
    Key? key,
    required this.onChange,
    required this.label,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
          label: Text(label),
        ),
        onChanged: onChange,
        obscureText: obscureText);
  }
}
