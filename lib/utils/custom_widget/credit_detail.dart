import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/global.dart';

class CreditDetail extends StatefulWidget {
  const CreditDetail({
    super.key,
  });

  @override
  State<CreditDetail> createState() => _CreditDetailState();
}

class _CreditDetailState extends State<CreditDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.symmetric(vertical: size.largePadding,horizontal: size.largePadding),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size.tradius_small),
          color: Colors.white60,
          boxShadow: [
            BoxShadow(
                blurRadius: 1,
                color: Colors.grey.withOpacity(0.3),
                offset: Offset(0, 2))
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(margin: EdgeInsets.only(right: 20),
            height: 30,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  8,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1,
                    color: Colors.grey.withOpacity(0.5),
                  )
                ],
                image: DecorationImage(image: AssetImage("assets/icon/apay.png"),fit: BoxFit.contain)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Apple Pay",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(height: size.smallSizeBox,),
              Text("Default")
            ],
          ),
          Expanded(child: SizedBox()),
          Container(height: 20,width: 20,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: newprimaryColor)),

            )

        ],
      ),
    );
  }
}