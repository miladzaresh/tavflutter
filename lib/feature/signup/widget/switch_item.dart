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
  late bool _isEdit=false;
  late TextEditingController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=TextEditingController(text: 'switch ${widget.id}');
  }
  @override
  Widget build(BuildContext context) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Switch(value: _switchValue, onChanged:(val)=>setState(() {
                _switchValue=val;
              })),
              SizedBox(width: 8,),
              Expanded(child: _isEdit?TextField(
                controller: controller,
              ):Text(controller.text)),
            ],
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(onPressed: (){
                if(_switchValue){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('you can not delete ')));
                }else{
                  widget.onDelete(widget.id);
                }
              }, icon: Icon(Icons.delete_outline,color: Colors.red,)),
              IconButton(onPressed: (){
                setState(() {
                  _isEdit=!_isEdit;
                });
              }, icon: Icon(_isEdit?Icons.check:Icons.edit,color: Colors.black,)),
            ],
          )
        ],
      );
}
