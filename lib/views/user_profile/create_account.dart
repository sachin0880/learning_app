import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/views/home_page/homePage.dart';
import 'package:learning_app/views/user_profile/profile_info.dart';
import 'package:learning_app/views/user_profile/sign_screen.dart';
import '../../utils/constants/custome__widget/icon_container.dart';
import '../../utils/constants/custome__widget/tcustome_container.dart';
import '../../utils/constants/custome__widget/ttext_field.dart';
import '../../utils/constants/global.dart';


class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
                TtextField(
                  prefixicon: Icons.email,
                ),
                SizedBox(
                  height: size.largeSizeBox,
                ),
                Text("Password"),
                TtextField(
                  prefixicon: Icons.lock,
                  suffixicon: Icons.visibility_off,
                ),
                SizedBox(
                  height: size.largeSizeBox,
                ),
                Text("Confirm Password"),
                TtextField(
                  prefixicon: Icons.lock,
                  suffixicon: Icons.visibility_off,
                ),
                SizedBox(
                  height: size.smallSizeBox,
                ),
                SizedBox(
                  height: size.tbutton_hei,
                ),
                GestureDetector(onTap:(){
                  Get.to(PersonalInfo());
                },
                  child: TcustomContainer(
                    height: size.tbutton_hei,
                    child: Center(
                      child: Text("Sign up",style:TextStyle(color: white) ,),
                    ),
                    radius: size.tradius_large,
                    color: newprimaryColor,
                  ),
                ),
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
                  onTap: (){Get.to(SignScreen());},
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
    );
  }
}