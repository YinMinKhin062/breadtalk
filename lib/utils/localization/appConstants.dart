import 'package:get/get.dart';

import 'model/languageModel.dart';

class AppConstants {
  AppConstants._();
  static List<LanguageModel> languages = [
    LanguageModel(imgUrl: '🇬🇧', langName: 'english'.tr, langCode: 'en'),
    LanguageModel(imgUrl: '🇲🇲', langName: 'myanmar'.tr, langCode: 'my'),
  ];
}
