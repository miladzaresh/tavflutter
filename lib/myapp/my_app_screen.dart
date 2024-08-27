import 'package:flutter/material.dart';
import 'package:tavflutter/core/languages/languages.dart';

class MyAppScreen extends StatefulWidget {
  const MyAppScreen({super.key});

  @override
  State<MyAppScreen> createState() => _MyAppScreenState();
}

class _MyAppScreenState extends State<MyAppScreen> {
  Widget _buildListViewRow(String title) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(8),
                ),
                width: 100,
                height: 100,
                margin: EdgeInsets.symmetric(horizontal: 8),
              ),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
            ),
          )
        ],
      );

  Widget _buildListViewColumn(String title) =>Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.black),
        ),
        SizedBox(
          height: 8,
        ),ListView.builder(
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(8),
            ),
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          itemCount: 5,
          shrinkWrap: true,
        )
      ],
    ),
    padding: EdgeInsets.symmetric(horizontal: 16),
  );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: AppBar(
            backgroundColor: Colors.grey.shade300,
            title: Text(
              Languages.of(context).appName,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            centerTitle: true,
          ),
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
              _buildListViewRow(Languages.of(context).newProducts),
              SizedBox(
                height: 12,
              ),
              _buildListViewColumn(Languages.of(context).suggestedMember),
              SizedBox(
                height: 12,
              ),
              _buildListViewRow(Languages.of(context).newProducts),
              SizedBox(
                height: 12,
              ),
              _buildListViewColumn(Languages.of(context).suggestedMember),
            ],
          ),
        ),
      );
}
