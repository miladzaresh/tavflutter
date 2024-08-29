import 'package:flutter/material.dart';

import '../languages/languages.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context)=>
      AppBar(
        backgroundColor: Colors.grey.shade300,
        title: Text(
          Languages.of(context).appName,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.black),
        ),
        centerTitle: true,
      );
}
