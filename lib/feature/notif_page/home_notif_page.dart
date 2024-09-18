import 'package:flutter/material.dart';
import 'package:tavflutter/feature/notif_page/widget/drower_widget.dart';
import 'package:tavflutter/feature/notif_page/widget/generic_button.dart';

class HomeNotifPage extends StatefulWidget {
  const HomeNotifPage({super.key});

  @override
  State<HomeNotifPage> createState() => _HomeNotifPageState();
}

class _HomeNotifPageState extends State<HomeNotifPage> {
  late int counter=0;
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GenericButton(increase: (int newCount){
              print('///////$newCount');
              setState(() {
                counter=newCount;
              });
            },count: counter,)
          ],
        ),
        drawer: DrawerWidget(counter: counter,),
      );
}
