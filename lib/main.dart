import 'package:browse_ui/Screens/browse_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'Screens/hand_screen.dart';
import 'Screens/magic_screen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
      EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/lang', // <-- change the path of the translation files
        fallbackLocale: Locale('en'),
      child: (BrowseScreen()),
  ));
}
