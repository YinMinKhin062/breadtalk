import 'package:breadtalk/utils/localization/appConstants.dart';
import 'package:breadtalk/utils/localization/controller.dart/localizationController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../../constants/sizes.dart';
import '../model/languageModel.dart';

class LanguageList extends StatelessWidget {
  const LanguageList({super.key, required this.languages});

  final List<LanguageModel> languages;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LocalizationController());
    return ListView.builder(
      itemCount: languages.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              splashColor: Colors.transparent,
              dense: true,
              minVerticalPadding: 0,
              visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
              contentPadding: EdgeInsets.zero,
              leading: Text(languages[index].imgUrl),
              title: Text(languages[index].langName),
              trailing: Icon(
                controller.selectedLanguage.value == index
                    ? Icons.check_circle
                    : null,
                color: Colors.blueGrey,
              ),
              onTap: () {
                controller.selectedLanguage.value = index;
                controller.changeLocale(AppConstants.languages[index].langCode);
                Get.back();
              },
            ),
            const Divider()
          ],
        );
      },
    );
  }
}
