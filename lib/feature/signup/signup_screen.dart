import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tavflutter/feature/signup/model/switch_imodel.dart';
import 'package:tavflutter/feature/signup/widget/switch_item.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late bool isVisible=false;
  final List<SwitchItem> items=[];
  late int counter=0;
  @override
  Widget build(BuildContext context) =>Scaffold(
    floatingActionButton: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if(isVisible)... [
          FloatingActionButton(
            onPressed: (){
              showDialog(
                context: context,
                builder: (context)=>AlertDialog(title: Text('hello'),)
              );
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 8,),
          FloatingActionButton(
            onPressed: (){
              showDialog(
                  context: context,
                  builder: (context)=>AlertDialog(title: Text('hello'),)
              );
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 8,),
          FloatingActionButton(
            onPressed: (){
              showDialog(
                  context: context,
                  builder: (context)=>AlertDialog(title: Text('hgryt'),)
              );
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 8,),
        ],
        FloatingActionButton(
          onPressed: (){
            setState(() {
              isVisible=!isVisible;
            });
          },
          child: Icon(Icons.add),
        ),
      ],
    ),
    body:_body(),
  );

  Widget _body()=>
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListView.builder(
              itemBuilder: (context,index)=>items[index],
              itemCount: items.length,
              shrinkWrap: true,

            ),
            SizedBox(height: 8,),
            ElevatedButton(onPressed: (){
              setState(() {
                items.add(SwitchItem((indexID) {

                  setState(() {
                    items.removeWhere((element) => element.id==indexID);

                  });
                }, counter++));
              });
            }, child: Text('add item'))
          ],
        ),
      );
}
