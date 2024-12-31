import 'package:flutter/material.dart';
import 'package:learning_app/utils/custom_widget/custom_textfield/temail_field.dart';
import 'package:learning_app/utils/custom_widget/tbutton.dart';
import 'package:learning_app/utils/custom_widget/custom_textfield/tpassword_field.dart';
import '../utils/constants/global.dart';
import 'new_password.dart';

class ForgetPasswordscr extends StatefulWidget {
  ForgetPasswordscr({super.key});

  @override
  State<ForgetPasswordscr> createState() => _ForgetPasswordscrState();
}

class _ForgetPasswordscrState extends State<ForgetPasswordscr> {
  final GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.largeSizeBox),
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.largeSizeBox,
                ),
                Center(
                  child: Text(
                    "Forget password?",
                    style: TextStyle(fontSize: size.brandingSize),
                  ),
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: const Text(
                        "Enter your email address below, and we'll send you a link to reset your password.",
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.center),
                  ),
                ),
                SizedBox(
                  height: size.largeSizeBox,
                ),
                Text("Email"),
                TemailField(
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please enter the valid email";
                    }
                    return null;
                  },
                  prefixicon: Icons.email,
                  hintext: "Please enter email address",
                ),
                SizedBox(
                  height: size.tbutton_hei,
                ),
                Tbutton(
                    text: "Send",
                    btnClick: () {
                      if(formkey.currentState!.validate()){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => NewPassword()));
                      }

                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
