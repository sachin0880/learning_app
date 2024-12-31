import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:learning_app/user_status/success_screens/success_scr.dart';
import 'package:learning_app/utils/custom_widget/custom_textfield/tphone_namefield.dart';
import 'package:learning_app/utils/custom_widget/tbutton.dart';
import 'package:learning_app/utils/custom_widget/ttcustom_container.dart';
import 'package:learning_app/utils/custom_widget/custom_textfield/tpassword_field.dart';
import 'package:learning_app/views/home_page/homePage.dart';
import '../utils/constants/global.dart';
import '../utils/custom_widget/profile_imageselector.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  String? selectedValue = 'select';
  TextEditingController phoneControllar = TextEditingController();
  TextEditingController nameControllar = TextEditingController();
  final GlobalKey<FormState>formkey =GlobalKey();

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
                  TphoneField(validator: (value){
                    if(value!.isEmpty) {
                      return "Please enter the name";
                    }
                    return null ;
                  },
                    hintext: "John Doe",),
                  SizedBox(
                    height: size.largeSizeBox,
                  ),
                  Text("Phone number"),
                  TtcustomIconcontainer(
                      radius: size.tradius_medi,
                      color: Colors.white.withOpacity(0.5),
                      child: IntlPhoneField(
                        controller: phoneControllar,
                        dropdownIconPosition: IconPosition.leading,
                        decoration: InputDecoration(
                            counterText: "", border: InputBorder.none),
                        languageCode: "en",
                        onChanged: (phone) {},
                      )),
                  SizedBox(
                    height: size.largeSizeBox,
                  ),
                  Text("Gender"),
                  TtcustomIconcontainer(
                    radius: size.tradius_medi,
                    color: Colors.white.withOpacity(0.5),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: DropdownButton<String>(

                        borderRadius: BorderRadius.circular(20),
                        isExpanded: true,
                        underline: SizedBox.shrink(),
                        value: selectedValue,
                        items: <String>['Male', 'Female','select'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
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
                  Tbutton(
                      text: "Complete profile",
                      btnClick: () {
                        if(formkey.currentState!.validate()){
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (_) => SuccessScr(click: navigate, text: 'Continue',)),
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

  void navigate(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
  }
}
