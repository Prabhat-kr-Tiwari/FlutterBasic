import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),
      
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Icon(Icons.home,color: Colors.white.withBlue(2),)
        ),
      ),
    );
  }
}