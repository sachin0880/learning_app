import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/user_status/personal_info.dart';
import 'package:learning_app/user_status/sign_screen.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/custom_widget/custom_textfield/temail_field.dart';
import 'package:learning_app/utils/custom_widget/tbutton.dart';
import 'package:learning_app/utils/custom_widget/custom_textfield/tpassword_field.dart';
import '../utils/constants/global.dart';
import '../utils/custom_widget/icon_container.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final GlobalKey<FormState> formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.largePadding),
            child: Form(
              key: formkey,
              autovalidateMode: AutovalidateMode.disabled,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.largeSizeBox,
                  ),
                  Center(
                    child: Text(
                      "Create an account",
                      style: TextStyle(
                          fontSize: size.brandingSize,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 8,
                      child: Text(
                        "Fill your information below or register with the social account",
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.tbutton_hei,
                  ),
                  Text("Email"),
                  TemailField( validator: (value){
                    if(value!.isEmpty ){
                      return "Please enter a valid email";
                    }
                    return null ;
                  },
                    prefixicon: Icons.email,),
                  SizedBox(
                    height: size.largeSizeBox,
                  ),
                  Text("Password"),
                  TpasswordField(
                    validator: (value){
                      if(value!.isEmpty || value.length < 6){
                        return "PLease enter a valid password lenghth 6";
                      }
                      return null;
                    },
                    prefixicon: Icons.lock,
                    suffixicon: Icons.visibility_off,
                  ),
                  SizedBox(
                    height: size.largeSizeBox,
                  ),
                  Text("Confirm Password"),
                  TpasswordField(
                    validator:(value){
                      if(value!.isEmpty || value.length < 6){
                        return "PLease enter a valid password lenghth 6";
                      }
                      return null;
                    },
                    prefixicon: Icons.lock,
                    suffixicon: Icons.visibility_off,
                  ),
                  SizedBox(
                    height: size.smallSizeBox,
                  ),

                  Row(
                    children: [
                      Checkbox(activeColor: newprimaryColor,
                          value: true, onChanged: (value) {}),
                      Text("Agree with"),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Terms & conditions",
                            style: TextStyle(
                                color: newprimaryColor,
                                decoration: TextDecoration.underline,
                                decorationColor: newprimaryColor),
                          ))
                    ],
                  ),
                  Tbutton(
                      text: "Sign up",
                      btnClick: () {
                        if(formkey.currentState!.validate()){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalInfo(),));
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
                        color: Colors.black,
                      )),
                      Text(" Or sign up with "),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.largeSizeBox,
                  ),
                  icon_container(),
                  SizedBox(
                    height: size.tbutton_hei,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(SignScreen());
                    },
                    child: Center(
                      child: Text.rich(
                        TextSpan(
                          text: "Alredy have an account? ",
                          children: <InlineSpan>[
                            TextSpan(
                              text: "SIGN IN",
                              style: TextStyle(
                                color: newprimaryColor,
                                decoration: TextDecoration.underline,
                                decorationColor: newprimaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
