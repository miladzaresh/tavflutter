import 'package:flutter/material.dart';
class TextFieldDeleted extends StatelessWidget {
  final void Function(String) onDelete;
  final void Function(String) addItem;

  TextFieldDeleted(this.onDelete,this.addItem);

  final TextEditingController controller=TextEditingController();

  @override
  Widget build(BuildContext context) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 4)
            ),
          )),
          SizedBox(width: 4,),
          ElevatedButton(onPressed: (){
            addItem(controller.text);
          }, child: Text('اضافه شدن')),
          IconButton(onPressed: (){
            onDelete(controller.text);
          }, icon: Icon(Icons.delete,color: Colors.red,))
        ],
      );
}
