import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(ExpandedWidget());
}

class ExpandedWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    ),
      home: MyExpandableScreen(),

    );
  }

}
class MyExpandableScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expandable widget"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

      ),
      body: Row(

        children: [
          Expanded(
            flex: 2,
            child: Container(

              width: 50,
              height: 100,
              color: Colors.yellow,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(

              width: 50,
              height: 100,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(

              width: 50,
              height: 100,
              color: Colors.brown,
            ),
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