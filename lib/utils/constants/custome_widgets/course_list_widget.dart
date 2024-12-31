import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../colors.dart';
import '../global.dart';

class ContinueLearningWidget extends StatefulWidget {
  final List courselist;
  const ContinueLearningWidget({super.key, required this.courselist});

  @override
  State<ContinueLearningWidget> createState() => _ContinueLearningWidgetState();
}

class _ContinueLearningWidgetState extends State<ContinueLearningWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: widget.courselist.length
          ,itemBuilder: (BuildContext context , index){
        var item = widget.courselist[index];
        return   Card(
          color: themeController.isDarkMode.value ? white : white,
          surfaceTintColor: Colors.transparent,
          elevation: 5,
          margin:  EdgeInsets.only(top: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(item["imageUrl"], width: 100, height: 100, fit: BoxFit.cover),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:  EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.only(left: 7,right: 7,top: 3,bottom: 3),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),
                            color: newprimaryColor.withOpacity(.2)),
                        child: Text(item["design"],style: TextStyle(color: newprimaryColor,fontSize:size.descFontSize ),),
                      ),

                      SizedBox(height: 5),
                      Text(item["title"], style:  TextStyle( fontSize:size.contentFontSize, fontWeight: FontWeight.w500)),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          CircleAvatar(radius: 10,backgroundColor: gray ,
                            child: Image(image: AssetImage(item["img2"]),height: 12,color: darkgray,),
                          ),
                          SizedBox(width: 10,),
                          Text(item["author"] ,style: const TextStyle(color: Colors.grey)),
                        ],
                      ),

                      //  SizedBox(height: 10),
                      // Text(cardlist[index].price, style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          LinearPercentIndicator(width: 150,
                            progressColor: newprimaryColor.withOpacity(.7),
                            percent: .8,),
                          Text("21/25",style: TextStyle(fontSize:size.descFontSize ),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
