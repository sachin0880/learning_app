
import 'package:flutter/material.dart';

import '../../utils/constants/global.dart';

class ContectUss extends StatefulWidget {
  final String image;
  final String title;

  const ContectUss({super.key,
  required this.image,
  required this.title});

  @override
  State<ContectUss> createState() => _ContectUssState();
}

class _ContectUssState extends State<ContectUss> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(size.tradius_small),
          boxShadow: [
            BoxShadow(
                blurRadius: 1, color: Colors.grey.withOpacity(0.5),offset: Offset(0,3))
          ]),
      child: ListTile(
        // contentPadding: EdgeInsets.zero,
        leading: Image(image: AssetImage(widget.image),height: 30,width: 30,),
        title: Text(widget.title),
        trailing: const Icon(
          Icons.navigate_next_rounded,
          size: 20,
        ),
      ),
    );
  }
}
