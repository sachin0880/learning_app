import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learning_app/views/user_profile/sign_screen.dart';
import 'package:learning_app/views/user_profile/success_screens/password_change_succes.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/custome__widget/tcustome_container.dart';
import '../../utils/constants/custome__widget/ttext_field.dart';
import '../../utils/constants/global.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.largePadding),
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
                TtextField(
                  prefixicon: Icons.lock,
                  suffixicon: Icons.visibility_off,
                ),
                SizedBox(
                  height: size.largeSizeBox,
                ),
                Text("Confirm password"),
                TtextField(
                  prefixicon: Icons.lock,
                  suffixicon: Icons.visibility_off,
                ),
                SizedBox(
                  height: size.tbutton_hei,
                ),
                GestureDetector(onTap: (){Get.to(PasswordChangesscr());},
                  child: TcustomContainer(
                    height: size.tbutton_hei,
                    child: Center(
                      child: Text(
                        "Change password",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    radius: size.tradius_large,
                    color: newprimaryColor,
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