import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({super.key, required this.onSubmit});

  final void Function(String) onSubmit;

  final TextEditingController controller = TextEditingController();
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(
              onPressed: () {
                if(_formKey.currentState?.validate() ??false){
                  onSubmit(controller.text);
                  controller.clear();
                }
              },
              child: Text('sumbit')),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Form(
              key: _formKey,
              child: TextFormField(
                controller: controller,
                validator: _onValidator,
                autofocus: true,
                decoration: InputDecoration(
                  errorStyle: TextStyle(
                    color: Colors.green
                  )
                ),
              ),
            ),
          )
        ],
      );

  String? _onValidator(String? val){
    if(val ==null){
      return null;
    }
    if(val.isEmpty){
      return 'is required';
    }
    return null;
  }
}
