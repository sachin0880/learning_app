import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/chatting_screens/messages.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/custom_widget/custom_textfield/tpassword_field.dart';

import '../../utils/constants/global.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController searchContorllar = TextEditingController();
  List<Map<String, dynamic>> chat = [
    {
      "image": "assets/icon/apple_icon-removebg-preview (1).png",
      "name": "Alex",
      "icons": Icon(Icons.check),
      "lastmsg": "How was your day?",
      "number": 1,
      "user": false,
    },
    {
      "image": "assets/icon/apple_icon-removebg-preview (1).png",
      "name": "Alex",
      "icons": Icon(Icons.check),
      "lastmsg": "How was your day?",
      "number": 2,
      "user": false
    },
    {
      "image": "assets/icon/apple_icon-removebg-preview (1).png",
      "name": "Alex",
      "icons": Icon(Icons.check),
      "lastmsg": "How was your day?",
      "number": 0,
      "user": true,
    },
    {
      "image": "assets/icon/apple_icon-removebg-preview (1).png",
      "name": "Alex",
      "icons": Icon(Icons.check),
      "lastmsg": "How was your day?",
      "number": 0,
      "user": true,
    },
    {
      "image": "assets/icon/apple_icon-removebg-preview (1).png",
      "name": "Alex",
      "icons": Icon(Icons.check),
      "lastmsg": "How was your day?",
      "number": 0,
      "user": true,
    },
    {
      "image": "assets/icon/apple_icon-removebg-preview (1).png",
      "name": "Alex",
      "icons": Icon(Icons.check),
      "lastmsg": "How was your day?",
      "number": 0,
      "user": true,
    },
    {
      "image": "assets/icon/apple_icon-removebg-preview (1).png",
      "name": "Alex",
      "icons": Icon(Icons.check),
      "lastmsg": "How was your day?",
      "number": 0,
      "user": true,
    },
    {
      "image": "assets/icon/apple_icon-removebg-preview (1).png",
      "name": "Alex",
      "icons": Icon(Icons.check),
      "lastmsg": "How was your day?",
      "number": 0,
      "user": true,
    },
    {
      "image": "assets/icon/apple_icon-removebg-preview (1).png",
      "name": "Alex",
      "icons": Icon(Icons.check),
      "lastmsg": "How was your day?",
      "number": 0,
      "user": true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Chat",
            style: TextStyle(
                fontSize: size.brandingSize, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.largePadding),
            child: Column(
              children: [
                Container(
                  height: size.tbutton_hei,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(size.tradius_small),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 2),
                            blurRadius: 1,
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  child: TextField(
                    style: TextStyle(color: newprimaryColor),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search_sharp,
                          color: newprimaryColor,
                        ),
                        hintText: "Search"),
                  ),
                ),
                ListView.builder(
                    itemCount: chat.length,
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => Get.to(Messages(),
                            transition: Transition.rightToLeft),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(size.tradius_small),
                            color: chat[index]["user"]
                                ? Colors.white
                                : newprimaryColor.withOpacity(0.2),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Stack(children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.yellow,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "${chat[index]["image"]}"),fit: BoxFit.fill)),
                                ),
                                Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.green,
                                          border: Border.all(
                                              width: 1, color: Colors.white)),
                                    ))
                              ]),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${chat[index]["name"]}"),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.done_all_rounded,
                                        color: newprimaryColor,
                                      ),
                                      Text("${chat[index]["lastmsg"]}")
                                    ],
                                  )
                                ],
                              ),
                              Expanded(
                                  child: SizedBox(
                                width: 0,
                              )),
                              chat[index]["user"]
                                  ? Text("")
                                  : Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: newprimaryColor,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "${chat[index]["number"]}",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      ),
                                    )
                            ],
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
