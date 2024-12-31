import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';


class profile_imageselector extends StatelessWidget {
  const profile_imageselector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        CircleAvatar(
          radius: 40,
          child: Icon(
            Icons.person,
            size: 40,
          ),
          backgroundColor: Colors.grey.withOpacity(0.2),
        ),
        Positioned(right: 5,bottom: 5,
          child: Container(
            padding: EdgeInsets.zero,
            height: 20,width: 20,
            color: newprimaryColor,
            child: Center(child: Icon(Icons.add,size: 20,),),
          ),
        )
      ]),
    );
  }
}