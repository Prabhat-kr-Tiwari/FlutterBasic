import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(ExpandedWidget());
}

class ExpandedWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: MyExpandableScreen(),
    );
  }

}
class MyExpandableScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expandable widget"),
      ),
      body: Row(

        children: [
          Container(

            width: 50,
            height: 100,
            color: Colors.yellow,
          ),
          Container(

            width: 50,
            height: 100,
            color: Colors.red,
          ),
          Container(

            width: 50,
            height: 100,
            color: Colors.brown,
          ),
          Expanded(
            child: Container(
            
              width: 50,
              height: 100,
              color: Colors.green,
            ),
          ),
        ],
      ),

    );
  }


}