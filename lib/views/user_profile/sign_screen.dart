import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/views/home_page/homePage.dart';

import '../../utils/constants/custome__widget/icon_container.dart';
import '../../utils/constants/custome__widget/tcustome_container.dart';
import '../../utils/constants/custome__widget/ttext_field.dart';
import '../../utils/constants/global.dart';

import 'create_account.dart';
import 'forget_passwordscr.dart';

class SignScreen extends StatefulWidget {
  const SignScreen({super.key});

  @override
  State<SignScreen> createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.largePadding),
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
                TtextField(
                  hintext: "email@gmail.com",
                  prefixicon: Icons.email,
                ),
                SizedBox(
                  height: size.largeSizeBox,
                ),
                Text("Password"),
                TtextField(
                  hintext: "******",
                  prefixicon: Icons.lock,
                  suffixicon: Icons.visibility_off,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>ForgetPasswordscr()));
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
                TcustomContainer(
                  child: GestureDetector(
                    onTap: (){Get.to(HomePage());},
                    child: Center(
                        child: Text(
                          "Sign in",
                          style: TextStyle(color: Colors.white,
                            fontSize: size.titleFontsize,
                          ),
                        )),
                  ),
                  radius: size.tradius_large,
                  color: newprimaryColor,
                  height: size.tbutton_hei,
                ),
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
                        child: Container(
                            height: 1,
                            color: Colors.grey
                        )),
                  ],
                ),
                SizedBox(height: size.largeSizeBox,),
                icon_container(),
                SizedBox(height: size.largeSizeBox,),
                Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                  Text("Don't have an account? "),
                  GestureDetector(onTap: (){Get.to(CreateAccount());},
                      child: Text("SIGN UP",style: TextStyle(color: newprimaryColor,decoration: TextDecoration.underline,decorationColor: newprimaryColor,fontWeight: FontWeight.w500),))
                ]

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
