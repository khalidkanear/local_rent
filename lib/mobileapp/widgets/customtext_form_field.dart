import 'package:flutter/material.dart';

TextFormField CustomTextFormField(
    {TextEditingController? controller,
    String? hint,
    String? Function(String?)? validator,
    void Function(String)? onChanged}) {
  return TextFormField(
      onChanged: onChanged,
      validator: validator,
      style: const TextStyle(fontSize: 17, height: 1),
      controller: controller,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 0, left: 30),
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
