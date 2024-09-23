import 'package:flutter/material.dart';
import 'package:tavflutter/core/languages/languages.dart';
import 'package:tavflutter/feature/myapp/my_app_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tavflutter/feature/navigator/counter_page.dart';
import 'package:tavflutter/feature/signup/signup_screen.dart';

import 'core/languages/app_localizations.dart';
import 'core/languages/locales.dart';
import 'feature/dropdown_screen/drop_down_screen.dart';
import 'feature/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'myApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'iran_sans'
      ),
      supportedLocales: Locales.supportLocals,
      locale: Locale('en'),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        AppLocalizationsDelegate(),

      ],
      home: DropDownScreen(),
    );
  }
}