import 'package:flutter/material.dart';

void main() {
  runApp(IconWidget());
}

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IconWidget',
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
      home: IconWidgetidgetScreen(),
    );
  }
}

class IconWidgetidgetScreen extends StatefulWidget {
  @override
  State<IconWidgetidgetScreen> createState() =>
      _IconWidgetScreenState();
}

class _IconWidgetScreenState extends State<IconWidgetidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("IconWidget")),
      body:Center(child: Icon(Icons.add_a_photo,size: 100,color: Colors.orange,)),
    );
  }
}
