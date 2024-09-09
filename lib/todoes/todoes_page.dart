import 'package:flutter/material.dart';
import 'package:tavflutter/todoes/widgets/list_view_todoes.dart';
import 'package:tavflutter/todoes/widgets/textfielld_widget.dart';
class TodoesPage extends StatefulWidget {
  const TodoesPage({super.key});

  @override
  State<TodoesPage> createState() => _TodoesPageState();
}

class _TodoesPageState extends State<TodoesPage> {
  final List<String> todos=[];

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25,),
              TextFieldWidget(onSubmit: (value){
                _addTodos(value);
              },),
              Expanded(child: ListViewTodoes(todos: todos,onDeleted: _removeTodos,)),
            ],
          ),
        ),
      );

  void _addTodos(String title){
    setState(() {
      todos.add(title);
    });
  }
  void _removeTodos(int index){
    setState(() {
      todos.removeAt(index);
    });
  }
}
