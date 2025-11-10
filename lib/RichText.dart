import 'package:flutter/material.dart';

void main() {
  runApp(RichTextWidget());
}

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RichTextWidget',
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
      home: RichTextWidgetidgetScreen(),
    );
  }
}

class RichTextWidgetidgetScreen extends StatefulWidget {
  @override
  State<RichTextWidgetidgetScreen> createState() =>
      _RichTextWidgetScreenState();
}

class _RichTextWidgetScreenState extends State<RichTextWidgetidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rich Text")),
      body: Center(
        child: RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.grey, fontSize: 36),

            children: [
              TextSpan(text: "Hello"),
              TextSpan(
                text: "world",
                style: TextStyle(
                  fontSize: 51,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),

              TextSpan(text: "Welcome to "),
              TextSpan(
                text: "Flutter",
                style: TextStyle(
                  fontSize: 43,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'MomoSignatureFont'
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
