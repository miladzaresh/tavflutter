import 'package:flutter/material.dart';
class FirstPage extends StatelessWidget {
  final String value;

  FirstPage(this.value);

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        body: Column(
          children: [
            Text(value),
            SizedBox(height: 12,),
            Row(
              children: [
                IconButton(onPressed: ()=>_backNull(context), icon: Icon(Icons.keyboard_backspace_rounded,)),
                IconButton(onPressed: ()=>_backTrue(context), icon: Icon(Icons.keyboard_backspace_rounded,color: Colors.green,)),
                IconButton(onPressed: ()=>_backFalse(context), icon: Icon(Icons.keyboard_backspace_rounded,color: Colors.red,)),
              ],
            )
          ],
        ),
      );

  void _backNull(context){
    Navigator.pop(context);
  }
  void _backTrue(context){
    Navigator.pop(context,true);
  }
  void _backFalse(context){
    Navigator.pop(context,false);
  }
}
