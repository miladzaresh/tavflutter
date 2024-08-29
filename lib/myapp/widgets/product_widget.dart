import 'package:flutter/material.dart';
class ProductWidget extends StatelessWidget {
  final String title;

  const ProductWidget(this.title,{super.key});

  @override
  Widget build(BuildContext context)=>
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 16),
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
            child: ListView.separated(
              separatorBuilder: (context,index)=>SizedBox(width: 16,),
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(8),
                ),
                width: 100,
                height: 100,
              ),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
            ),
          )
        ],
      );
}
