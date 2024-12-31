
import 'package:flutter/material.dart';

class waveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height/3.5);
    var firstBendPoint = Offset(size.width/9, size.height/3);
    var firstendPoint = Offset(size.width/4, size.height/4);
    path.quadraticBezierTo(firstBendPoint.dx, firstBendPoint.dy, firstendPoint.dx, firstendPoint.dy);
    var secondBendPoint = Offset(size.width/3, size.height/6);
    var secondEndpoint = Offset(2*size.width, size.height/7);
    path.quadraticBezierTo(secondBendPoint.dx, secondBendPoint.dy, secondEndpoint.dx, secondEndpoint.dy);
    var thrideendPoint = Offset(size.width/2, size.height/4);
    var thridEndPoin = Offset(3.5*size.width, size.height/7);
    path.quadraticBezierTo(thrideendPoint.dx, thrideendPoint.dy, thridEndPoin.dx, thridEndPoin.dy);
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false; }
