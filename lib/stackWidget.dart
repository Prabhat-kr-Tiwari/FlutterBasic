import 'package:flutter/material.dart';

void main() {
  runApp(StackWidget());
}

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StackWidget',
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
      home: StackWidgetScreen(),
    );
  }
}

class StackWidgetScreen extends StatefulWidget {
  @override
  State<StackWidgetScreen> createState() =>
      _StackWidgetState();
}

class _StackWidgetState extends State<StackWidgetScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stack Widget")),
      body: Container(
        width: 300,
        height: 300,
        child: Stack(
          children: [
            Container(width: 220,height: 220,color: Colors.blueGrey,),
            Positioned(
              left: 21,
                top: 21,
                bottom: 21,
                right: 21,
                child: Container(width: 160,height: 160,color: Colors.greenAccent,))
          ],
        ),
      )
    );
  }
}
