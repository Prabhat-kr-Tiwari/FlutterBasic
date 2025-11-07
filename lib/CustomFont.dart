import 'package:flutter/material.dart';

void main(){
  runApp(CustomfontWidget());
}
class CustomfontWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: CustomFontScreen(),
    );
  }
}
class CustomFontScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar( title: Text("Custom Font"),),
      body: Center(child: Text("Hello" ,style:TextStyle(fontFamily: 'MomoSignatureFont',fontWeight: FontWeight.w500))),
    );
  }
  
}