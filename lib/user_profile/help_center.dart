import 'package:flutter/material.dart';
import 'package:learning_app/utils/custom_widget/custom_textfield/temail_field.dart';

import '../utils/constants/global.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Help Center"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.largePadding),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.largeSizeBox),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(size.tradius_medi),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2,
                          color: Colors.grey,
                          offset: Offset(0, 1))
                    ]),
                child: TemailField(
                  prefixicon: Icons.search,
                  hintext: "Search",
                ),
              ),
              SizedBox(height: size.largeSizeBox,),
              Text("Frequaently Asked Questions",style: TextStyle(fontSize: size.subtitleFontsize),),
              SizedBox(height: size.largeSizeBox,),
            ],
          ),
        ),
      ),
    );
  }
}
