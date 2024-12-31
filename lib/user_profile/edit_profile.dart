import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:learning_app/utils/custom_widget/custom_textfield/tphone_namefield.dart';
import 'package:learning_app/utils/custom_widget/profile_imageselector.dart';
import 'package:learning_app/utils/custom_widget/tbutton.dart';
import 'package:learning_app/utils/custom_widget/ttcustom_container.dart';
import 'package:learning_app/utils/custom_widget/custom_textfield/tpassword_field.dart';
import '../utils/constants/global.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String? selctedValue = "select";
  String? selectedImage = "";
  TextEditingController phoneControllar = TextEditingController();
  TextEditingController emailControllar = TextEditingController();
  TextEditingController dobControllar = TextEditingController();

  Future<void> pickImage(ImageSource source) async {
    final pickImage = await ImagePicker().pickImage(source: source);
    if (pickImage != null) {
      setState(() {
        selectedImage = pickImage.path;
      });
    }
  }
 final GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                )),
            centerTitle: true,
            title: Text(
              "Edit Profile",
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: size.titleFontsize),
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.largePadding),
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            pickImage(ImageSource.camera);
                          },
                          child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.withOpacity(0.1),
                              ),
                              child: selectedImage != null &&
                                      selectedImage!.isNotEmpty
                                  ? ClipRRect(
                                      borderRadius: BorderRadius.circular(80),
                                      child: Image.file(
                                        File(selectedImage!),
                                        fit: BoxFit.fill,
                                      ))
                                  : Icon(Icons.person)),
                        ),
                        selectedImage != null&&selectedImage!.isNotEmpty
                            ? SizedBox()
                            : Positioned(
                                bottom: 0, right: 0, child: Icon(Icons.edit)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.tbutton_hei,
                  ),
                  Text("Name"),
                  TphoneField(
                    validator: (value){if(value.isEmpty){return "Please enter name";}return null;},
                    hintext: "john Doe",
                  ),
                  SizedBox(
                    height: size.largeSizeBox,
                  ),
                  Text("Phone Number"),
                  TtcustomIconcontainer(
                    radius: size.tradius_small,
                    color: Colors.white.withOpacity(0.4),
                    child: IntlPhoneField(
                      controller: phoneControllar,
                      decoration: InputDecoration(
                        hintText: "123 456 789 ",
                        border: InputBorder.none,
                        counterText: "",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.largeSizeBox,
                  ),
                  Text("Email"),
                  TphoneField(
                    validator: (value){if(value.isEmpty){return "Please enter email";}return null;},
                    hintext: "example@gmail.con",
                    inputType: TextInputType.number,
                    controller: emailControllar,
                  ),
                  Text("DOB"),
                  TphoneField(
                    validator: (value){if(value.isEmpty){return "Please enter date of birth";}return null;},
                    hintext: "DD/MM/YY",
                    controller: dobControllar,
                  ),
                  SizedBox(
                    height: size.largeSizeBox,
                  ),
                  Text("Gender"),
                  TtcustomIconcontainer(
                    color: Colors.white.withOpacity(0.5),
                    radius: size.tradius_medi,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: DropdownButton<String>(

                          isExpanded: true,
                          underline: SizedBox.shrink(),
                          value: selctedValue,
                          items: <String>["Male", "Female", "select"]
                              .map((String value) {
                            return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w400),
                                ));
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selctedValue = newValue;
                            });
                          }),
                    ),
                  ),
                  SizedBox(height: size.tbutton_hei),
                  Tbutton(text: "Update profile", btnClick: () {
                    if(formkey.currentState!.validate()){}
                  })
                ],
              ),
            ),
          ),
        ));
  }
}
