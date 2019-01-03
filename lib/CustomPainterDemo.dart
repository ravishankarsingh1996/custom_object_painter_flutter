import 'package:flutter/material.dart';

Color mainBGColor = Colors.greenAccent;
Color redColor = Colors.red;
Color purpleColor = Colors.purple;
Color cyanColor = Colors.cyanAccent;
Color orangeColor = Colors.orange;

class CustomPainterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomPaint(
          painter: MyCustomPainter(),
          child: Container(
          ),
        ),
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
  Paint paint = Paint();
  Path mainBgPath = Path();
  mainBgPath.addRect(Rect.fromLTWH(0.0, 0.0, size.width, size.height));
  paint.color = mainBGColor;
  canvas.drawPath(mainBgPath, paint);


  Path purplePath = Path();
  purplePath.lineTo(size.width*.45, 0);
  purplePath.quadraticBezierTo(size.width*.25, size.height*0.3, 0, size.height* 0.55);
  purplePath.close();
  paint.color = purpleColor;
  canvas.drawPath(purplePath, paint);

  Path redPath = Path();
  redPath.moveTo(size.width  * 0.9, 0.0);
  redPath.quadraticBezierTo(size.width*0.5, size.height*.1, 0, size.height*0.85);
  redPath.lineTo(0, size.height);
  redPath.lineTo(size.width*0.25, size.height);
  redPath.quadraticBezierTo(size.width*.5, size.height*0.7, size.width, size.height*0.6);
  redPath.lineTo(size.width, 0.0);
  redPath.close();
  paint.color = redColor;
  canvas.drawPath(redPath, paint);

  Path orangePath = Path();
  orangePath.moveTo(0, size.height*.8);
  orangePath.quadraticBezierTo(size.width*.25, size.height*0.85, size.width*0.4, size.height);
  orangePath.lineTo(0, size.height);
  orangePath.close();
  paint.color = orangeColor;
  canvas.drawPath(orangePath, paint);

  Path trianglePath = Path();
  trianglePath.lineTo(size.width*.25, 0);
  trianglePath.lineTo(0, size.height*.25);
  trianglePath.close();
  paint.color = cyanColor;
  canvas.drawPath(trianglePath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return null;
  }
}
