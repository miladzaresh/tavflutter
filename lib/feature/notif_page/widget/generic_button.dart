import 'package:flutter/material.dart';
class GenericButton extends StatelessWidget {
  GenericButton({super.key,required this.increase,required this.count});
  final void Function(int) increase;
  final int count;
  @override
  Widget build(BuildContext context)=>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            int newCount=count;
            increase(newCount--);

          }, child: Text('minez count')),
          ElevatedButton(onPressed: (){
            int newCount=count;
            print(newCount++);
            increase(newCount++);
          }, child: Text('plus count')),
        ],
      );
}
