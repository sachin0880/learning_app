import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/custom_widget/custom_textfield/tpassword_field.dart';
import 'package:learning_app/utils/custom_widget/tbutton.dart';

import '../utils/constants/global.dart';

class PasswordManager extends StatefulWidget {
  const PasswordManager({super.key});

  @override
  State<PasswordManager> createState() => _PasswordManagerState();
}

class _PasswordManagerState extends State<PasswordManager> {
  GlobalKey<FormState>formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Password Manager",
          style: TextStyle(
              fontSize: size.titleFontsize, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.largePadding),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                SizedBox(
                  height: size.tbutton_hei,
                ),
                Text("Current Password"),
                TpasswordField(
                  prefixicon: Icons.lock,
                  hintext: "******",
                  inputType: TextInputType.number,
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please enter the valid password";
                    }
                  },),
                SizedBox(height: size.largeSizeBox,),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Forget password?",
                    style: TextStyle(
                      fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: newprimaryColor,
                        decoration: TextDecoration.underline,
                        decorationColor: newprimaryColor),
                  ),
                ),
                SizedBox(height: size.largeSizeBox,),
                Text("New Password"),
                TpasswordField(validator: (value){
                  if(value!.isEmpty){
                    return "Please enter the valid password";
                  }
                },
                  prefixicon: Icons.lock,
                  hintext: "******",inputType: TextInputType.number,),
                SizedBox(height: size.largeSizeBox,),
                Text("Confirm New Password"),
                TpasswordField(validator: (value){
                  if(value!.isEmpty){
                    return "Please enter the valid password";
                  }
                },
                    prefixicon: Icons.lock,
                    hintext: "******",inputType: TextInputType.number),
                 SizedBox(height: 250,),
                Tbutton(text: "Change Password", btnClick: (){
                  if(formkey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Your password has been changed")));
                  }
                }),
                SizedBox(height: size.largeSizeBox,),

              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
        ),
      ),
    );
  }
}
