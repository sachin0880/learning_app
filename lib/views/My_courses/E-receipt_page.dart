import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/global.dart';

class EreceiptPage extends StatefulWidget {
  const EreceiptPage({super.key});

  @override
  State<EreceiptPage> createState() => _EreceiptPageState();
}

class _EreceiptPageState extends State<EreceiptPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(leading: IconButton(onPressed: () {  },
       icon: Icon(Icons.arrow_back),),
       centerTitle: true,
           title: Text("E-Receipt" ,style: TextStyle(fontSize:size.headingFontsize ),),
         actions: [
           IconButton(onPressed: (){}, icon: Icon(Icons.share),)
         ],
       ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Image(image: AssetImage("assets/images/barcode.png")),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Divider(),
          ),
          buildSummaryRow("Purchase Date" , "August 24, 2023 | 10:00 AM"),
          buildSummaryRow("Mentor", "Robert Green"),
          buildSummaryRow("Language", "English"),
          buildSummaryRow("Lessons", "32"),
          buildSummaryRow("Level", "Beginner"),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Divider(),
          ),
          buildSummaryRow("Amount", "\$180"),
          buildSummaryRow("Tax", "\$5.00"),
          SizedBox(height: 10,),
          buildSummaryRow("Total", "\$185.00"),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Divider(),
          ),
          buildSummaryRow("Payment Method", "Apply Pay"),
          buildSummaryRow("Payment Status", "Paid"),
          buildSummaryRow("Transaction", "#RE2564HG23"),


          Container(
            width: MediaQuery.of(context).size.width*.9,
            margin: EdgeInsets.only(top: 50),
            padding: EdgeInsets.only(top: 10,bottom: 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(42),
            color: newprimaryColor),
            child: Center(
              child: Text("Download E-Receipt",style: TextStyle(fontSize:size.subtitleFontsize,
                  color: white),),
            ),
          )
        ],
      ),

    );
  }
  Widget buildSummaryRow(String title, String value,) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize:size.subtitleFontsize,
              color: darkgray,
            ),
          ),
          Text(
            value,
            style: TextStyle(
                fontSize:size.subtitleFontsize,
                color: black,
                fontWeight: FontWeight.w500
            ),
          ),
        ],
      ),
    );
  }
}
