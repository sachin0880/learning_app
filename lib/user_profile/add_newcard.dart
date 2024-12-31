import 'package:flutter/material.dart';
import 'package:learning_app/utils/custom_widget/custom_textfield/tphone_namefield.dart';
import 'package:learning_app/utils/custom_widget/tbutton.dart';

import '../utils/constants/global.dart';

class AddNewcard extends StatefulWidget {
  const AddNewcard({super.key});

  @override
  State<AddNewcard> createState() => _AddNewcardState();
}

class _AddNewcardState extends State<AddNewcard> {
  TextEditingController nameControllar = TextEditingController();
  TextEditingController cardnumberControllar = TextEditingController();
  TextEditingController dateControllar = TextEditingController();
  TextEditingController cvcControllar = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Add new card",
          style: TextStyle(
              fontSize: size.titleFontsize, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.largePadding),child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.tbutton_hei,),
              Text("Card name"),
              TphoneField(validator: (value){
                if(value!.isEmpty){
                  return "Please enter the valid card holder name";
                }
              },
                inputType: TextInputType.emailAddress,controller: nameControllar,),
              SizedBox(height: size.largeSizeBox,),
              Text("Card number"),
              TphoneField(
                maxlangth: 15,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter the valid card number";
                }
                return null;

              },
                inputType: TextInputType.number,controller: cardnumberControllar,),
              SizedBox(height: size.largeSizeBox,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("MM/YY"),
                      SizedBox(width:  MediaQuery.of(context).size.width*0.43,
                        child: TphoneField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter the valid expiry date";
                            }
                            return null;

                          },
                          inputType: TextInputType.number,
                          controller: dateControllar,),
                      )
                    ],
                  ),Expanded(child: SizedBox()),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("CVC"),
                      SizedBox(width: MediaQuery.of(context).size.width*0.43,
                        child: TphoneField(
                          maxlangth: 3,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter the valid cvc ";
                            }
                            return null;

                          },

                          inputType: TextInputType.number,
                          controller: cvcControllar,),
                      )
                    ],
                  ),

                ],
              ),
              SizedBox(height: size.largeSizeBox,),
              Tbutton(text: "Save", btnClick: (){
                if(formkey.currentState!.validate()){}
              })

            ],
          ),
          ),
        ),
      ),
    );
  }
}
