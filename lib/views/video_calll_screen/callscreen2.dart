import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/constants/global.dart';

class CallScreen2 extends StatefulWidget {
  const CallScreen2({super.key});

  @override
  State<CallScreen2> createState() => _CallScreen2State();
}

class _CallScreen2State extends State<CallScreen2> {



  @override
  Widget build(BuildContext context) {

    double pt=0.0;
    double pl=0.0;
    double pr=0.0;
    double ph=0.0;
    double pw=0.0;
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
      pt=210;
      pl=110;pr=110;
      ph=170; pw=120;
    }
    else if(screenWidth >= 756.0 && screenWidth <=770 ){
      btnh = 35;
      btnp= 10;
      txth = 520;
      backtxtw=60;
      backtxtp=size.titleFontsize+2;
      videoh=size.descFontSize;
      bottoms =25;
      pt=270;
      pl=120;pr=120;
      ph=150; pw=110;
    }
    else if(screenWidth >= 800.0){
      btnh = 5;
      btnp = 10;
      txth= 700;
      backtxtw=80;
      backtxtp=size.brandingSize;
      videoh=size.titleFontsize;
      bottoms = 35;
      pt=300;
      pl=140;pr=140;
      ph=180; pw=160;
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
                      color: Color(0xff273238),
                      //image: DecorationImage(image: AssetImage("assets/images/video_img.png"),fit:BoxFit.fill)
                  ),
                  child: Stack(
                    children: [

                      Positioned(
                        top: pt,left: pl,right: pr,
                        child: Container(
                          height: ph,width: pw,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: red,
                            border: Border.all(color: newprimaryColor,width: 4),
                            boxShadow: [
                              BoxShadow(color:newprimaryColor ,blurRadius: 38,spreadRadius: 5,offset: Offset(0, 0))
                            ],
                            image: DecorationImage(image: AssetImage("assets/images/video_img.png"),fit:BoxFit.fill,)
                          ),
                        ),
                      ),
                      Align(
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
                                height: 40,width: 70,
                                padding: EdgeInsets.all(5),
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
                    ],
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
              child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: white,width: 1),
                  ),
                  child: Icon(Icons.arrow_back,color: white,)),
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
