import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/global.dart';

class TphoneField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintext;
  final TextInputType? inputType;
  final FormFieldValidator? validator;
  final int ? maxlangth;

  const TphoneField(
      {super.key,
      this.inputType,
      this.controller,
      this.hintext,
      this.validator,
        this.maxlangth
      });

  @override
  State<TphoneField> createState() => _TphoneFieldState();
}

class _TphoneFieldState extends State<TphoneField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength:widget.maxlangth ,
      validator: widget.validator,
      controller: widget.controller,
      keyboardType: widget.inputType,
      decoration: InputDecoration(
        counterText: "",
        hintText: widget.hintext,
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        filled: true,
        fillColor: Colors.grey.withOpacity(0.2),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(size.tradius_medi)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(size.tradius_medi),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(size.tradius_medi),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(size.tradius_medi),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(size.tradius_medi),
        ),
      ),
    );
  }
}
