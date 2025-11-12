import 'package:flutter/material.dart';
import 'package:flutter_basic/navigation/IntroPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(FirstScreenWidget());
}

class FirstScreenWidget extends StatelessWidget {
  const FirstScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FirstScreenWidget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true, // default, optional
        textTheme: TextTheme(
          headlineSmall: TextStyle(
            fontSize: 21,
            fontFamily: 'MomoSignatureFont',
            fontWeight: FontWeight.bold,
          ),
          labelSmall: TextStyle(
            fontSize: 11,
            fontFamily: 'MomoSignatureFont',
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      home: IntroPage(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() =>
      _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ConstraintBoxWidgetScreen")),
      body:Center(
        child: Container(
          color: Colors.orange,
          child:Text("Hello",style: TextStyle(fontSize: 21),),

        ),
      ),
    );
  }
}
