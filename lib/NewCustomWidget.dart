import 'package:flutter/material.dart';
import 'package:flutter_basic/Widgets/rounded_button.dart';
import 'package:flutter_basic/ui_helper/util.dart';

void main() {
  runApp(CustomWidget());
}

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CustomWidget',
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
      home: CustomWidgetScreen(),
    );
  }
}

class CustomWidgetScreen extends StatefulWidget {
  @override
  State<CustomWidgetScreen> createState() => _CustomWidgetScreenState();
}

class _CustomWidgetScreenState extends State<CustomWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom widget")),
      body: Center(
        child: Container(
          width: 150,
          height: 50,
          child: RoundedButton(
            buttonName: 'Play',
            icon: Icon(Icons.play_arrow),
            voidCallback: () {
              print("Played ");
            },
            textStyle: myTextStyle21(),
          ),
        ),
      ),
    );
  }
}
