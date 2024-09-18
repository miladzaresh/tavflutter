import 'package:flutter/material.dart';
import 'package:tavflutter/feature/signup/model/switch_imodel.dart';

class SwitchItem extends StatefulWidget {
  SwitchItem(this.onDelete,this.id);
  final int id;
  final void Function(int) onDelete;
  @override
  State<SwitchItem> createState() => _SwitchItemState();
}

class _SwitchItemState extends State<SwitchItem> {
  late bool _switchValue=false;
  @override
  Widget build(BuildContext context) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Switch(value: _switchValue, onChanged:(val)=>setState(() {
                _switchValue=val;
              })),
              Text(widget.id.toString()),
              Image.network('https://cdn.britannica.com/70/234870-050-D4D024BB/Orange-colored-cat-yawns-displaying-teeth.jpg?w=300 ',scale: 4,)
            ],
          ),
          IconButton(onPressed: (){
            if(_switchValue){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('you can not delete ')));
            }else{
              widget.onDelete(widget.id);
            }
          }, icon: Icon(Icons.delete_outline,color: Colors.red,))
        ],
      );
}
