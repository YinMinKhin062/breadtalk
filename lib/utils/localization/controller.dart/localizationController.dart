import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedContainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/sizes.dart';
import '../appConstants.dart';
import '../screens/languageList.dart';

class LocalizationController extends GetxController {
  static LocalizationController get instance => Get.find();

  var locale = 'en'.obs;
  RxInt selectedLanguage = 0.obs;

  //change language
  void changeLocale(String newLocale) async {
    locale.value = newLocale;
    Get.updateLocale(Locale(locale.value));
  }

  //show languge menu box
  Future<dynamic> selectedLanguagePopUp(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 70,
                    height: 5,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.withOpacity(.3),
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ),
                SizedBox(
                  height: Sizes.spaceBetween,
                ),
                Text(
                  "select language".tr,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w500, color: Colors.orange),
                ),
                SizedBox(
                  height: Sizes.spaceBetween,
                ),
                SizedBox(
                  height: 90,
                  child: LanguageList(
                    languages: AppConstants.languages,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
