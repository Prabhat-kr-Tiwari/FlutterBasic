import 'package:flutter/material.dart';

void main() {
  runApp(ClipRRectWidget());
}

class ClipRRectWidget extends StatelessWidget {
  const ClipRRectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClipRRectWidget',
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
      home: ClipRRectWidgetScreen(),
    );
  }
}

class ClipRRectWidgetScreen extends StatefulWidget {
  @override
  State<ClipRRectWidgetScreen> createState() => _ClipRRectWidgetScreenState();
}

class _ClipRRectWidgetScreenState extends State<ClipRRectWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ClipRRect")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
              borderRadius:BorderRadius.only(topLeft: Radius.circular(81),bottomRight: Radius.circular(31)),
              child: Image.asset("assets/images/MainBefore.jpg")),
        ),
      ),
    );
  }
}
