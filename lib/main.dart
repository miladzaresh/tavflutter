import 'package:flutter/material.dart';
import 'package:tavflutter/core/languages/languages.dart';
import 'package:tavflutter/myapp/my_app_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tavflutter/todoes/todoes_page.dart';

import 'core/languages/app_localizations.dart';
import 'core/languages/locales.dart';

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
      ),
      supportedLocales: Locales.supportLocals,
      locale: Locale('fa'),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        AppLocalizationsDelegate(),

      ],
      home: const TodoesPage(),
    );
  }
}