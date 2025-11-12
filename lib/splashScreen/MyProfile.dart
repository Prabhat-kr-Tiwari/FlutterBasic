import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget{
  var namefromHome;
  MyProfile(this.namefromHome);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Profile"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Welcom $namefromHome",style: TextStyle(fontSize: 34,color: Colors.orange),),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Back")),

          Center(
            child: Container(color: Colors.orange,),
          ),
        ],
      ),
    );
  }

}