import 'package:flutter/material.dart';

class RCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {

    Paint paint0 = Paint()
      ..color = const Color(0XFFEE6A61);

    Path path0 = Path();
    path0.moveTo(size.width*0.0625000,size.height*0.2020000);
    path0.lineTo(size.width*0.0612500,size.height*0.5000000);
    path0.lineTo(size.width*0.7500000,size.height*0.5020000);
    path0.lineTo(size.width*0.6262500,size.height*0.2000000);
    path0.lineTo(size.width*0.0625000,size.height*0.2020000);
    path0.close();
    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}


