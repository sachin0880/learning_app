import 'package:flutter/material.dart';

class TcustomContainer extends StatelessWidget {
  final double? height;

  final double radius;
  final Color? color;
  final child;

  const TcustomContainer(
      {super.key,
        this.height,
        this.color,
        required this.child,
        required this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}