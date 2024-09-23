import 'package:flutter/material.dart';
import 'package:tavflutter/feature/dropdown_screen/widget/text_field_delete.dart';

class DropDownScreen extends StatefulWidget {
  const DropDownScreen({super.key});

  @override
  State<DropDownScreen> createState() => _DropDownScreenState();
}

class _DropDownScreenState extends State<DropDownScreen> {
  final List<String> list=[];
  String dropdownValue = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // dropdownValue=list.first;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            list.isEmpty?Container():DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 21,),
            TextFieldDeleted((va) {
              setState(() {
                list.removeWhere((element) => element==va);
              });
            }, (val) {
              setState(() {
                list.add(val);
              });
            })
          ],
        ),
      ),
    );
  }
}
