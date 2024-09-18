import 'package:flutter/material.dart';
class ChoosePeopleWidget extends StatelessWidget {
  final String title;

  const ChoosePeopleWidget(this.title,{super.key});

  @override
  Widget build(BuildContext context) =>
      Container(
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
}
