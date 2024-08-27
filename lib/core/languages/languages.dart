import'package:flutter/material.dart';
abstract class Languages{
  static Languages of(BuildContext context) {
    return Localizations.of<Languages>(context, Languages) as Languages;
  }
  String get appName;
  String get newProducts;
  String get newVersion;
  String get suggestedMember;
}