import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(ConstraintBoxWidget());
}

class ConstraintBoxWidget extends StatelessWidget {
  const ConstraintBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ConstraintBoxWidget',
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
      home: ConstraintBoxWidgetScreen(),
    );
  }
}

class ConstraintBoxWidgetScreen extends StatefulWidget {
  @override
  State<ConstraintBoxWidgetScreen> createState() =>
      _ConstraintBoxWidgetScreenScreenState();
}

class _ConstraintBoxWidgetScreenScreenState extends State<ConstraintBoxWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ConstraintBoxWidgetScreen")),
      body:ConstrainedBox(

        constraints: BoxConstraints(
          minHeight: 30
              ,minWidth: 40,
          maxWidth: 60,
          maxHeight: 70
        ),
        child:Text("Hello",style: TextStyle(fontSize: 21),),

      ),
    );
  }
}
