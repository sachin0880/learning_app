import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/colors.dart';

import '../utils/constants/global.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  List<Map<String, dynamic>> messages = [
    {
      'message': "hii",
      'isUser': false,
    },
    {'message': "hello", 'isUser': true},
    {'message': "kya kar rhe ho ", 'isUser': false},
    {'message': "bas kuch nhi", 'isUser': false},
    {'message': "hello bhaiya", 'isUser': true},
    {'message': "kya haal hai", 'isUser': true},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Chat",),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: messages.length,
                // shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Align(
                      alignment: messages[index]['isUser']
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Container(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.5),
                        margin: EdgeInsets.only(bottom: 8.0),
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: messages[index]['isUser']
                                ? newprimaryColor
                                : newprimaryColor.withOpacity(.5)),
                        child: Text("${messages[index]['message']}"),
                      ));
                },
              ),
            ),
            Container(
              height: 55,
              width: MediaQuery.sizeOf(context).width,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      scrollPadding: EdgeInsets.zero,
                      expands: false,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          // filled: true,
                          // fillColor: Colors.red,
                          prefixIcon: Icon(Icons.emoji_emotions_outlined),
                          suffixIcon: Icon(Icons.attach_file),
                          hintText: "Write a messages"),
                    ),
                  ),
                  CircleAvatar(
                    radius: 20,
                    child: Icon(Icons.mic,color: Colors.black,),
                    backgroundColor: newprimaryColor,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar:
    );
  }
}
