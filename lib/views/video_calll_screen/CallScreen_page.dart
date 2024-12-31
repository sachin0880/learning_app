import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/constants/global.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {



  @override
  Widget build(BuildContext context) {

    double bottoms= 0.0;
    double backtxtp = 0.0;
    double videoh=0.0;
    double backtxtw= 0.0;
    double txth=0.0;
    double btnp=0.0;
    double btnh =0.0;
    double screenWidth = MediaQuery.of(context).size.height;
   // print("Screen Height: $screenWidth");

    if(screenWidth <= 640.0){
      btnh = 35;
      txth = 430;
      backtxtw=60;
      backtxtp=size.titleFontsize;
      videoh=size.descFontSize;
      bottoms=15;
    }
   else if(screenWidth >= 756.0 && screenWidth <=770 ){
       btnh = 35;
       btnp= 10;
       txth = 520;
       backtxtw=60;
       backtxtp=size.titleFontsize+2;
       videoh=size.descFontSize;
       bottoms =25;
    }
    else if(screenWidth >= 800.0){
      btnh = 5;
      btnp = 10;
      txth= 700;
      backtxtw=80;
      backtxtp=size.brandingSize;
      videoh=size.titleFontsize;
      bottoms = 35;
    }

    print("iiiiiiiiiiiii $screenWidth");
    return Scaffold(
    backgroundColor: newprimaryColor,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container( height: MediaQuery.of(context).size.height*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(42),
                  bottomRight: Radius.circular(42),),
                  color: darkgray,
                  image: DecorationImage(image: AssetImage("assets/images/video_img.png"),fit:BoxFit.fill)
                ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: EdgeInsets.only(left:size.mediumPadding,bottom:bottoms ),
                      width: 200,
                      height: 90,
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Back Man",style: TextStyle(fontSize:backtxtp,color: white),),
                          Container(
                            height: 30,width: 50,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                              color:gray.withOpacity(.2),),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  backgroundColor: red,
                                  radius: 5,
                                ),
                                Text("5:49",style: TextStyle(fontSize: videoh,color: white),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                                    ),
              ),


              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  height: 70,
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        children: [
                          SizedBox(width: 10,),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: white
                            ),
                            child: Icon(Icons.speaker),
                          ),
                          SizedBox(width: 30,),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: white
                            ),
                            child: Icon(Icons.speaker),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: white
                            ),
                            child: Icon(Icons.speaker),
                          ),
                          SizedBox(width: 30,),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: white
                            ),
                            child: Icon(Icons.speaker),
                          ),
                          SizedBox(width: 10,)
                        ],
                      ),

                    ],
                  ),
                ),
              ),

            ],
          ),

          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: size.mediumPadding,right:size.mediumPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: white,width: 1),
                      ),
                      child: Icon(Icons.arrow_back,color: white,)),
                  Container(
                    height: 100,width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: darkgray
                    ),
                  )
                ],
              ),
            ),
          ),



           ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
      Container(
        margin: EdgeInsets.only(bottom: btnh),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            // color: Colors.orangeAccent
           color: newprimaryColor
        ),
        child: Container(
          height:MediaQuery.of(context).size.width*0.15,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              shape: BoxShape.circle,color:white
          ),
          child: Center(child: Icon(Icons.call,size: 18,)),
        ) ,
      ),
    );
  }
}
