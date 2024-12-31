import 'package:flutter/material.dart';
import 'package:learning_app/user_status/sign_screen.dart';
import 'package:learning_app/user_status/success_screens/success_scr.dart';
import 'package:learning_app/utils/custom_widget/tbutton.dart';
import 'package:learning_app/utils/custom_widget/custom_textfield/tpassword_field.dart';
import '../utils/constants/global.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final GlobalKey<FormState>formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.largePadding),
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "New Password",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 35),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Text(
                        "Your new password must be different from previously used password",
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.tbutton_hei,
                  ),
                  Text("Password"),
                  TpasswordField(
                    validator: (value){
                      if(value!.isEmpty  ){
                        return "Please enter minimum 6 digit password";
                      }
                      return null;
                    },
                    prefixicon: Icons.lock,
                    suffixicon: Icons.visibility_off,
                  ),
                  SizedBox(
                    height: size.largeSizeBox,
                  ),
                  Text("Confirm password"),
                  TpasswordField(
                    validator: (value){
                      if(value!.isEmpty ){
                        return "Please enter minimum 6 digit password";
                      }
                      return null;
                    },
                    prefixicon: Icons.lock,
                    suffixicon: Icons.visibility_off,
                  ),
                  SizedBox(
                    height: size.tbutton_hei,
                  ),
                  Tbutton(
                      text: "Change password",
                      btnClick: () {
                        if(formkey.currentState!.validate()){
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => SuccessScr(
                                      click: () {},
                                      text: "Continue to sign in")),
                                  (route) => false);
                        }
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
