import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My flutter app",
      theme: ThemeData(primarySwatch: Colors.cyan),

      home: MyDashBoardScreen(),
    );
  }
}

class MyDashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DashboardScreen")),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue.shade50,
        child: Center(
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(51),
              // borderRadius: BorderRadius.only(topLeft: Radius.circular(51)),
              border: Border.all(width: 2, color: Colors.deepOrange),
              boxShadow: [
                BoxShadow(
                  blurRadius: 11,
                  spreadRadius: 5,
                  color: Colors.yellowAccent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
