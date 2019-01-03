import 'package:flutter/material.dart';
import 'CustomPainterDemo.dart';

void main(){
  runApp(CustomPainterDemo());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Container(
           child: Center(
             child: Text("Hello"),
           ),
        ),
      ),
    );
  }
}