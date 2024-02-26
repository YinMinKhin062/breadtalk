import 'package:flutter/material.dart';

class MyAppBarTheme{
  MyAppBarTheme._();
  static const myAppBar=AppBarTheme(
    elevation: 0,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    centerTitle: false,
    actionsIconTheme: IconThemeData(size:24,color: Colors.black),
    titleTextStyle:TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w600)
  );
}