import 'package:flutter/material.dart';

class ListViewTodoes extends StatelessWidget {
  const ListViewTodoes({super.key, required this.todos,required this.onDeleted});

  final List<String> todos;
  final void Function(int) onDeleted;

  @override
  Widget build(BuildContext context) =>
      ListView.separated(
        itemCount: todos.length,
        itemBuilder: (context,index)=>_buildItem(todos[index],index),
        separatorBuilder: (context,index)=>Divider(),
      );

  _buildItem(String title,int index)=>
      Row(
        children: [
          Expanded(child: Text(title)),
          IconButton(onPressed: (){
            onDeleted(index);
          }, icon: Icon(Icons.delete_outline,color: Colors.red,))
        ],
      );
}
