import 'package:flutter/material.dart';

void main() {
  runApp(GradientWidget());
}

class GradientWidget extends StatelessWidget {
  const GradientWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GradientWidget',
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
      home: GradientWidgetScreen(),
    );
  }
}

class GradientWidgetScreen extends StatefulWidget {
  @override
  State<GradientWidgetScreen> createState() => _GradientWidgetScreenScreenState();
}

class _GradientWidgetScreenScreenState extends State<GradientWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GradientWidget")),
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
