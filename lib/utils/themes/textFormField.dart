import 'package:flutter/material.dart';

class MyTextFormField {
  MyTextFormField._();
  static InputDecorationTheme myInputDecoration = InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
    isDense: true,
    errorMaxLines: 3,
    // prefixIconColor: Colors.or,
    labelStyle: const TextStyle(fontSize: 14).copyWith(color: Colors.grey),
    hintStyle: const TextStyle(fontSize: 14).copyWith(color: Colors.grey),
    errorStyle: const TextStyle(fontSize: 10).copyWith(color: Colors.red),
    alignLabelWithHint: true,

    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
    ),
    errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.all(Radius.circular(12))),
    focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.orange),
        borderRadius: BorderRadius.all(Radius.circular(12))),
    focusedErrorBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12))),
    disabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12))),
  );
}
