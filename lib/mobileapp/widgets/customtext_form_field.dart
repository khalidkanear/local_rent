import 'package:flutter/material.dart';

TextFormField CustomTextFormField({
  TextEditingController? controller,
  String? hint,
}) {
  return TextFormField(
      cursorHeight: 16,
      controller: controller,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 30, left: 30),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          disabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          filled: true,
          fillColor: const Color(0xfff6f6f6),
          hintText: hint,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none)));
}
