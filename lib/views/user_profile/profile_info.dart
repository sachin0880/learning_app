import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:phone_form_field/phone_form_field.dart';
import '../../utils/constants/custome__widget/profile_imageselector.dart';
import '../../utils/constants/custome__widget/tcustome_container.dart';
import '../../utils/constants/custome__widget/ttext_field.dart';
import '../../utils/constants/global.dart';


import 'otp_varification.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  String? selectedValue = 'Male';
  // PhoneController phoneControllar = PhoneController();
  TextEditingController nameControllar = TextEditingController();


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
                SizedBox(
                  height: size.largeSizeBox,
                ),
                Center(
                  child: Text(
                    "Personal Info",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: size.brandingSize),
                  ),
                ),
                Center(
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text(
                        "Don't worry only you can see your personal data. No one else will be able to see it",
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.center,
                      )),
                ),
                SizedBox(
                  height: size.tbutton_hei,
                ),
                profile_imageselector(),
                SizedBox(
                  height: size.largeSizeBox,
                ),
                Text("Name"),
                TtextField(
                  controller: nameControllar,
                  hintext: "John Doe",
                ),
                SizedBox(
                  height: size.largeSizeBox,
                ),
                Text("Phone number"),
                TcustomContainer(
                  radius: size.tradius_medi,
                  color: Colors.grey.withOpacity(0.2),
                  child: PhoneFormField(
                      initialValue: PhoneNumber.parse("+91"),
                      onChanged: (number){},
                      keyboardType: TextInputType.phone,
                      // controller: phoneControllar,

                      decoration: InputDecoration(border: InputBorder.none)),
                ),
                SizedBox(
                  height: size.largeSizeBox,
                ),
                Text("Gender"),
                TcustomContainer(
                  radius: size.tradius_medi,
                  color: Colors.grey.withOpacity(0.2),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: DropdownButton<String>(borderRadius: BorderRadius.circular(20),

                      isExpanded: true,
                      underline: SizedBox.shrink(),
                      value: selectedValue,
                      items: <String>['Male', 'Female'].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: size.largeSizeBox,
                ),
                GestureDetector(onTap: (){Get.to(OtpVarification());},
                  child: TcustomContainer(height: size.tbutton_hei,
                    child: Center(child: Text("Complete Profile",style: TextStyle(color: white),)),
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