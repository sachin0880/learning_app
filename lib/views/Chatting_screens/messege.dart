import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {

  List<Map<String, dynamic>> messages  = [
    {
      'message': "hii",
      'isUser': false,
    },
    {
      'message': "hello",
      'isUser': true
    },
    {
      'message': "kya kar rhe ho ",
      'isUser': false
    },
    {
      'message': "bas kuch nhi",
      'isUser': false
    },
    {
      'message': "hello bhaiya",
      'isUser': true
    },
    {
      'message': "kya haal hai",
      'isUser': true
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Chat"),
      ),
      body: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            itemCount: messages.length,
            itemBuilder: (context, index) {
              return Align(
                  alignment: messages[index]['isUser'] ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(width: MediaQuery.of(context).size.width*.5,
                    margin: EdgeInsets.only(bottom: 8.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: messages[index]['isUser'] ? Colors.yellow : Colors.lightBlueAccent
                    ),
                    child: Text("${messages[index]['message']}"),));
            },),
        ),
      ),
      bottomNavigationBar: TextField(
        decoration: InputDecoration(
            hintText: "Enter Text"
        ),
      ),
    );
  }
}