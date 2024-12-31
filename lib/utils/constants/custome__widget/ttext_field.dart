import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/constants/custome__widget/tcustome_container.dart';

import '../global.dart';

class TtextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintext;
  final bool obscureText;
  final IconData? suffixicon;
  final IconData? prefixicon;
  final TextInputType? inputType;

  const TtextField({
    super.key,
    this.inputType,
    this.controller,
    this.suffixicon,
    this.obscureText = false,
    this.prefixicon,
    this.hintext,
  });

  @override
  Widget build(BuildContext context) {
    return TcustomContainer(
      color: Colors.grey.withOpacity(.2),
      radius: size.tradius_medi,
      child: TextField(
        controller: controller,
        keyboardType: inputType,
        obscureText: obscureText,
        decoration: InputDecoration(
            fillColor: Colors.red,
            suffixIcon: Icon(suffixicon),
            prefixIcon: Icon(prefixicon),
            border: InputBorder.none,

            // focusedBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(size.tradius_medi),
            // ),
            // errorBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(size.tradius_medi),
            //     borderSide: BorderSide(color: red
            //
            //     )),
            // enabledBorder: OutlineInputBorder(
            //   borderSide: BorderSide(width: 0,color: black),
            //   borderRadius: BorderRadius.circular(size.tradius_medi),
            // ),
            // disabledBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(size.tradius_medi),
            //   borderSide: BorderSide(color: Colors.transparent),
            // ),
            hintText: hintext
        ),
      ),
    );
  }
}