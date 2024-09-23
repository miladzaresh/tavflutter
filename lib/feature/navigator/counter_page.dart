import 'package:flutter/material.dart';

import 'first_page.dart';
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter=0;

  @override
  Widget build(BuildContext context)=>
      Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 32,),
              Text(_counter.toString()),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: _addBtn, icon: Icon(Icons.add)),
                  IconButton(onPressed: _nextBtn, icon: Icon(Icons.navigate_next_rounded))

                ],
              )
            ],
          ),
        ),
      );

  void _addBtn()=>setState(() {
    _counter++;
  });

  void _nextBtn()async{
    bool? result=await Navigator.push(context, MaterialPageRoute(builder: (_)=>FirstPage(_counter.toString())));

    if(result == true){
      setState(() {
        _counter=1;
      });
    }else if(result == false){
      setState(() {
        _counter=-1;
      });
    }
  }
}
