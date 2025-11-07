import 'package:flutter/material.dart';

void main() {
  runApp(MarginAndPadding());
}

class MarginAndPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MarginAndPaddingScreen(),
    );
  }
}

class MarginAndPaddingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Margin and padding"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          margin: EdgeInsets.only(left: 23),
          color: Colors.amberAccent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Helllo world", style: TextStyle(fontSize: 25)),
          ),
        ),
      ),
    );
  }
}
