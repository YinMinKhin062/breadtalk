import 'package:breadtalk/navigationMenu.dart';
import 'package:breadtalk/utils/localization/AppTranslation.dart';
import 'package:breadtalk/utils/localization/controller.dart/localizationController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/themes/myTheme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LocalizationController());
    return Obx(
      () => GetMaterialApp(
        theme: MyTheme.myTheme,
        debugShowCheckedModeBanner: false,
        home: const NavigationMenu(),
        translationsKeys: AppTranslations.translations,
        locale: Locale(controller.locale.value),
        fallbackLocale: const Locale('en', ''),
      ),
    );
  }
}
