import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tavflutter/core/languages/languages.dart';
import 'package:tavflutter/core/widgets/app_bar.dart';
import 'package:tavflutter/feature/myapp/widgets/choose_people_widget.dart';
import 'package:tavflutter/feature/myapp/widgets/product_widget.dart';

class MyAppScreen extends StatefulWidget {
  const MyAppScreen({super.key});

  @override
  State<MyAppScreen> createState() => _MyAppScreenState();
}

class _MyAppScreenState extends State<MyAppScreen> {


  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(68),
          child: MyAppBar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                margin: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(8),
                ),
                width: double.infinity,
                child: Text(
                  Languages.of(context).newVersion,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              ProductWidget(Languages.of(context).newProducts),
              SizedBox(
                height: 12,
              ),
              ChoosePeopleWidget(Languages.of(context).suggestedMember),
              SizedBox(
                height: 12,
              ),
              ProductWidget(Languages.of(context).newProducts),
              SizedBox(
                height: 12,
              ),
              ChoosePeopleWidget(Languages.of(context).suggestedMember),
            ],
          ),
        ),
      );
}
