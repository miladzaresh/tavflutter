import 'package:flutter/material.dart';
import 'package:tavflutter/feature/login/widget/custom_textformfield.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  late bool obsserved=true;
  late bool _checkboxValue=true;
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Center(
          child: Container(
            padding: EdgeInsets.all(32),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('ACCOUNT LOGIN',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade600

                ),),
                SizedBox(height: 16,),
                CustomTextFormField(title: 'USERNAME', controller: usernameController, type: TextInputType.text),
                SizedBox(height: 16,),
                CustomTextFormField(title: 'PASSWORD',
                  controller: passwordController,
                  type: TextInputType.visiblePassword,
                  toggle: IconButton(
                  onPressed: (){
                    setState(() {
                      obsserved=!obsserved;
                    });
                  },
                  icon: Icon(Icons.remove_red_eye,color: Colors.grey.shade400,),
                ),observed: obsserved,),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Checkbox(value: _checkboxValue, onChanged: (val){
                         setState(() {
                           _checkboxValue=val!;
                         });
                       }),
                       SizedBox(width: 4,),
                       Text(
                         'Remember me',
                         style: TextStyle(
                           fontSize: 14,
                           fontWeight: FontWeight.w400,
                           color: Colors.grey.shade400
                         ),
                       )
                     ],
                    ),
                    Text(
                      'forgey password',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade600
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 24,),
                ElevatedButton(onPressed: (){

                }, child: Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black)
                ),)

              ],
            ),
          ),
        ),
      );
}
