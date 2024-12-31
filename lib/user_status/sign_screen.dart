import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/custom_widget/custom_textfield/temail_field.dart';
import 'package:learning_app/utils/custom_widget/tbutton.dart';
import 'package:learning_app/utils/custom_widget/custom_textfield/tpassword_field.dart';
import 'package:learning_app/views/home_page/homePage.dart';
import '../utils/constants/global.dart';
import '../utils/custom_widget/icon_container.dart';
import 'create_account.dart';
import 'forget_passwordscr.dart';

class SignScreen extends StatefulWidget {
  const SignScreen({super.key});

  @override
  State<SignScreen> createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  final GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.largePadding),
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              child: Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.tbutton_hei,
                    ),
                    Center(
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: size.brandingSize),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Hi Welcome back,you have been missed ",
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
                      hintext: "email@gmail.com",
                      prefixicon: Icons.email,
                    ),
                    SizedBox(
                      height: size.largeSizeBox,
                    ),
                    Text("Password"),
                    TpasswordField(
                      validator: (value){
                        if(value!.isEmpty){
                          return "Please enter the valid password";
                        }
                        return null;
                      },
                      hintext: "******",
                      prefixicon: Icons.lock,
                      suffixicon: Icons.visibility_off,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ForgetPasswordscr()));
                          },
                          child: Text(
                            "Forget password?",
                            style: TextStyle(color: newprimaryColor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.largeSizeBox,
                    ),
                    Tbutton(
                        text: "Sign in",
                        btnClick: () {
                          if (formkey.currentState!.validate()) {
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=> HomePage()), (route) => false);

                          }
                        }),
                    SizedBox(
                      height: size.largeSizeBox,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          height: 1,
                          color: Colors.grey,
                        )),
                        Text(" or Sign in with "),
                        Expanded(
                            child: Container(height: 1, color: Colors.grey)),
                      ],
                    ),
                    SizedBox(
                      height: size.largeSizeBox,
                    ),
                    icon_container(),
                    SizedBox(
                      height: size.largeSizeBox,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text("Don't have an account? "),
                      GestureDetector(
                          onTap: () {
                            Get.to(CreateAccount());
                          },
                          child: Text(
                            "SIGN UP",
                            style: TextStyle(
                                color: newprimaryColor,
                                decoration: TextDecoration.underline,
                                decorationColor: newprimaryColor,
                                fontWeight: FontWeight.w500),
                          ))
                    ])
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
