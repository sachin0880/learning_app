import 'package:flutter/material.dart';

import 'package:learning_app/utils/custom_widget/ttcustom_container.dart';
import '../../constants/colors.dart';
import '../../constants/global.dart';

class TpasswordField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintext;
  final IconData? suffixicon;
  final IconData? prefixicon;
  final TextInputType? inputType;
  final FormFieldValidator<String>?validator;

  const TpasswordField({
    super.key,
    this.inputType,
    this.controller,
    this.suffixicon,
    this.prefixicon,
    this.hintext,
    this.validator

  });



  @override
  State<TpasswordField> createState() => _TpasswordFieldState();
}

class _TpasswordFieldState extends State<TpasswordField> {
bool passwordHideAndShow = true ;

  @override
  Widget build(BuildContext context) {

    return TextFormField(
     validator: widget.validator,
      controller: widget.controller,
      keyboardType: widget.inputType,
      obscureText: passwordHideAndShow,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10),
        filled: true,
        fillColor: Colors.grey.withOpacity(0.2),
        suffixIcon: GestureDetector(onTap: (){
          setState(() {
            passwordHideAndShow = !passwordHideAndShow;
          });
        },child: (passwordHideAndShow) ? Icon(Icons.visibility_off):Icon(Icons.remove_red_eye),),
          prefixIcon: Icon(widget.prefixicon),
          border: InputBorder.none,

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(size.tradius_medi),
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(size.tradius_medi),
              borderSide: BorderSide(color: red

              )),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(size.tradius_medi),
              borderSide: BorderSide(color: red

              )),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0,color: Colors.transparent),
            borderRadius: BorderRadius.circular(size.tradius_medi),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(size.tradius_medi),
            borderSide: BorderSide(color: Colors.transparent),
          ),
        hintText: widget.hintext
      ),
    );
  }
}
