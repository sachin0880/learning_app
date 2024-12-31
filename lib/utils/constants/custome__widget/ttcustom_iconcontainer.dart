import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TtcustomIconcontainer extends StatelessWidget {
  final double ? height;
  final double ? width;
  final child;
  final double  radius;
  final Color ? color ;
  const TtcustomIconcontainer({super.key,
    this.height,
    this.width,
    required this.radius,
    required this.child,
    this.color

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius),
          boxShadow: [BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 1,offset: Offset(0,1)
          )]
      ),
      child: child,
    );
  }
}