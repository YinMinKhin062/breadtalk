import 'dart:async';

import 'package:breadtalk/myApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  Timer(const Duration(seconds: 2), () {
    FlutterNativeSplash.remove();
  });

  runApp(const MyApp());
}
