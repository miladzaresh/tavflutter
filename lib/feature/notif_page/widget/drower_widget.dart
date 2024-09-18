import 'package:flutter/material.dart';
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key,required this.counter});
  final int counter;
  @override
  Widget build(BuildContext context) =>
      Drawer(
        child: ListTile(
          title: Text('$counter'),
          leading: Icon(Icons.notification_important_outlined,),
        ),
      );
}
