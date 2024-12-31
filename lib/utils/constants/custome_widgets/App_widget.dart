import 'package:flutter/material.dart';

import '../global.dart';

class AppWidget extends StatelessWidget implements PreferredSizeWidget {
  final Widget customclass;
  final String title;

  const AppWidget({
    Key? key,
    required this.customclass,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(fontSize: size.headingFontsize),
      ),
        leadingWidth: 45,
      leading: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => customclass,));
          },
          child: Icon(Icons.arrow_back))

    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
