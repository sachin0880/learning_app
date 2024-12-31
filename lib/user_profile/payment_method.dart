import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/utils/constants/colors.dart';

import '../utils/constants/global.dart';
import '../utils/custom_widget/credit_detail.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  List<Map<String, dynamic>> card = [
    {
      "cardImage": "assets/icon/visa_card.png",
      "title": "Visa ending in 1234,",
      "expiry": "Expiry 06/2024",
    },
    {
      "cardImage": "assets/icon/master_card.png",
      "title": "Mastercard ending in 1234",
      "expiry": "Payment Methods",
    },
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Payment Methods",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: size.titleFontsize),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.largePadding),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: size.largeSizeBox,
            ),
            Text(
              "Default Payment",
              style: TextStyle(
                  fontSize: size.subtitleFontsize, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: size.mediumSizeBox,
            ),
            CreditDetail(),
            SizedBox(
              height: size.mediumSizeBox,
            ),
            Row(
              children: [
                Text(
                  "Credit & Debit card",
                  style: TextStyle(
                      fontSize: size.subtitleFontsize,
                      fontWeight: FontWeight.w400),
                ),
                Expanded(child: SizedBox()),
                Text(
                  "Add new card",
                  style: TextStyle(
                    color: newprimaryColor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: size.mediumSizeBox,
            ),
            ListView.builder(
                itemCount: card.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: size.mediumPadding),
                      padding: EdgeInsets.symmetric(
                          vertical: size.largePadding,
                          horizontal: size.largePadding),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(size.tradius_small),
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
                          Container(
                            margin: EdgeInsets.only(right: 20),
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
                                image: DecorationImage(
                                    image: AssetImage(card[index]["cardImage"]),
                                    fit: BoxFit.contain)),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                card[index]["title"],
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: size.smallSizeBox,
                              ),
                              Text(card[index]["expiry"]),
                              SizedBox(
                                height: size.smallSizeBox,
                              ),
                              Row(
                                children: [
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Set as default  ",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400),
                                      )),
                                  Text(
                                    "Edit",
                                    style: TextStyle(color: newprimaryColor),
                                  )
                                ],
                              )
                            ],
                          ),
                          Expanded(child: SizedBox()),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 2, color: newprimaryColor)),
                            child: currentIndex != index
                                ? Text("")
                                : Center(
                                    child: Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        color: newprimaryColor,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 2, color: Colors.white),
                                      ),
                                    ),
                                  ),
                          )
                        ],
                      ),
                    ),
                  );
                })
          ]),
        ),
      ),
    );
  }
}
