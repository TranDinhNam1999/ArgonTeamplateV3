import 'package:argonflutter/constant/Theme.dart';
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String placeholder;
  final Widget suffixIcon;
  final Widget? prefixIcon;
  final VoidCallback onTap;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  final bool autofocus;
  final Color borderColor;

  Input(
      {required this.placeholder,
      required this.suffixIcon,
      this.prefixIcon,
      required this.onTap,
      required this.onChanged,
      this.autofocus = false,
      this.borderColor = ArgonColors.border,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: ArgonColors.muted,
      onTap: onTap,
      onChanged: onChanged,
      controller: controller,
      autofocus: autofocus,
      style: const TextStyle(
          height: 0.85, fontSize: 14.0, color: ArgonColors.initial),
      textAlignVertical: const TextAlignVertical(y: 0.6),
      decoration: InputDecoration(
          filled: true,
          fillColor: ArgonColors.white,
          hintStyle: const TextStyle(
            color: ArgonColors.muted,
          ),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(
                color: borderColor, width: 1.0, style: BorderStyle.solid),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.0),
              borderSide: BorderSide(
                  color: borderColor, width: 1.0, style: BorderStyle.solid)),
          hintText: placeholder),
    );
  }
}
