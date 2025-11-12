import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailHeropage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("Detail"),),
      body: Container(width:double.infinity,child: Hero(tag: "background", child: Image.asset("assets/images/MainBefore.jpg"))),
    );
  }
  
}