import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/constants/global.dart';
import 'package:learning_app/views/user_profile/success_screens/success_scr.dart';


import '../../utils/constants/custome__widget/tcustome_container.dart';

class OtpVarification extends StatefulWidget {
  const OtpVarification({super.key});

  @override
  State<OtpVarification> createState() => _OtpVarificationState();
}

class _OtpVarificationState extends State<OtpVarification> {
  String? otpError;
  String enteredOtp = "";
  int remainingSecond = 30;
  bool text = true;
  late Timer timer;

  void validateOtp(String value) {
    if (value.length != 4) {
      otpError = 'Please enter the valid otp';
    } else {
      otpError = null;
    }
  }

  void clock() {
    if (remainingSecond > 0) {
      setState(() {
        remainingSecond = remainingSecond - 1;
      });
    } else {
      timer.cancel();
      setState(() {
        text = false;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      clock();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.largePadding),
            child: Column(
              children: [
                SizedBox(
                  height: size.largeSizeBox,
                ),
                Text(
                  "OTP Varification",
                  style: TextStyle(
                      fontSize: size.brandingSize, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      text:
                      "Enter the 4-digit that we have sent via phone number ",
                      style: TextStyle(
                        overflow: TextOverflow.visible,
                      ),
                      children: <InlineSpan>[
                        TextSpan(
                            text: "+62 813****5977",
                            style: TextStyle(
                              color: newprimaryColor,
                            ))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.largeSizeBox,
                ),
                Row(
                  children: List.generate(
                    4,
                        (index) => Expanded(
                      child: Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: size.smallPadding),
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.withOpacity(0.2),
                            border: Border.all(
                                color: otpError == null
                                    ? Colors.transparent
                                    : Colors.red),
                          ),
                          child: Center(
                            child: TextFormField(
                              maxLength: 1,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                counterText: "",
                              ),
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  FocusScope.of(context).nextFocus();
                                  enteredOtp += value;
                                  if (enteredOtp.length == 4) {
                                    validateOtp(enteredOtp);
                                  }
                                } else {
                                  setState(() {
                                    enteredOtp = enteredOtp.substring(0, 4);
                                  });
                                  FocusScope.of(context).previousFocus();
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.largeSizeBox,
                ),
                GestureDetector(
                  onTap: () {
                    validateOtp(enteredOtp);
                    if (otpError == null) {
                      Get.to(SuccessScr(click: () {}, check: '',));
                    }
                  },
                  child: TcustomContainer(
                    child: Center(
                      child: otpError == null
                          ? Text("Continue",style: TextStyle(color: white),)
                          : Text("Try again",style: TextStyle(color: white),),
                    ),
                    radius: size.tradius_large,
                    color: newprimaryColor,
                    height: size.tbutton_hei,
                  ),
                ),
                SizedBox(
                  height: size.largeSizeBox,
                ),
                Text("Try again in $remainingSecond seconds"),
                SizedBox(
                  height: size.largeSizeBox,
                ),
                Text(
                  "RESEND CODE",
                  style: TextStyle(
                      color: newprimaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      decorationColor: newprimaryColor),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}