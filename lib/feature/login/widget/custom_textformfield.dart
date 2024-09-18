import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType type;
  final Widget? toggle;
  final String title;
  final bool observed;

  CustomTextFormField(
      {required this.title,
      required this.controller,
      required this.type,
      this.toggle,
      this.observed = true});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.grey.shade700),
          ),
          SizedBox(
            height: 6,
          ),
          SizedBox(
            height: 40,
            child: TextFormField(
              obscureText: toggle==null?false:observed,
              controller: controller,
              keyboardType: type,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(8),
                suffixIcon: toggle,
              ),
            ),
          )
        ],
      );
}
