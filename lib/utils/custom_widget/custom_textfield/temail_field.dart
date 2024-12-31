import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/global.dart';

class TemailField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintext;
  final IconData ? prefixicon ;
  final TextInputType? inputType;
  final FormFieldValidator? validator;

  const TemailField(
      {super.key,
        this.prefixicon,
        this.inputType,
        this.controller,
        this.hintext,
        this.validator, });

  @override
  State<TemailField> createState() => _TemailFieldState();
}

class _TemailFieldState extends State<TemailField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: widget.controller,
      keyboardType: widget.inputType,
      decoration: InputDecoration(
        prefixIcon: Icon(widget.prefixicon),
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
