import 'package:breadtalk/utils/themes/textFormField.dart';
import 'package:breadtalk/utils/themes/textSelectionTheme.dart';
import 'package:flutter/material.dart';

import 'appBarTheme.dart';

class MyTheme {
  MyTheme._();
  static ThemeData myTheme = ThemeData(
      useMaterial3: true,
      textSelectionTheme: textSelectionTheme.txtSelectionThemeData,
      appBarTheme: MyAppBarTheme.myAppBar,
      inputDecorationTheme: MyTextFormField.myInputDecoration);
}
