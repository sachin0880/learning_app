import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learning_app/utils/constants/colors.dart';
import '../../utils/constants/custome__widget/tcustome_container.dart';
import '../../utils/constants/custome__widget/ttext_field.dart';
import '../../utils/constants/global.dart';
import 'new_password.dart';


class ForgetPasswordscr extends StatefulWidget {
  const ForgetPasswordscr({super.key});

  @override
  State<ForgetPasswordscr> createState() => _ForgetPasswordscrState();
}

class _ForgetPasswordscrState extends State<ForgetPasswordscr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal : size.largeSizeBox ),
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
                child: Container(width: MediaQuery.of(context).size.width*0.9,
                  child: const Text(
                      "Enter your email address below, and we'll send you a link to reset your password.",overflow : TextOverflow.visible,textAlign: TextAlign.center),
                ),
              ),
              SizedBox(
                height: size.largeSizeBox,
              ),
              Text("Email"),
              TtextField(
                prefixicon: Icons.email,
                hintext: "Please enter email address",
              ),
              SizedBox(
                height: size.tbutton_hei,
              ),
              GestureDetector(onTap: (){Get.to(NewPassword());},
                child: TcustomContainer(
                  color: newprimaryColor,
                  child: Center(
                    child: Text(
                      "Send",
                      style: TextStyle( color: white ,
                          fontSize: size.titleFontsize,),
                    ),
                  ),
                  radius: size.tradius_medi,
                  height: size.tbutton_hei,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}