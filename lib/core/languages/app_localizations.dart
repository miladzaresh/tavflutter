import 'package:flutter/material.dart';
import 'package:tavflutter/core/languages/language_fa.dart';
import 'languages.dart';
class AppLocalizationsDelegate extends LocalizationsDelegate<Languages> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ["fa","en"].contains(locale.languageCode);

  @override
  Future<Languages> load(Locale locale) => _load(locale);

  static Future<Languages> _load(Locale locale)async{
    switch(locale.languageCode){
      case "fa":
        return LanguagesFa();
      default:
        return LanguagesFa();
    }

  }


  @override
  bool shouldReload(LocalizationsDelegate<Languages> old) => false;
}
