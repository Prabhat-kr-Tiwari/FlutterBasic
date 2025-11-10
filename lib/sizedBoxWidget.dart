import 'package:flutter/material.dart';

void main() {
  runApp(SizedBoxWidget());
}

class SizedBoxWidget extends StatelessWidget {
  const SizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SizedBoxWidget',
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
      home: SizedboxWidgetScreen(),
    );
  }
}

class SizedboxWidgetScreen extends StatefulWidget {
  @override
  State<SizedboxWidgetScreen> createState() => _SizedBoxWidgetScreenState();
}

class _SizedBoxWidgetScreenState extends State<SizedboxWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sized box")),
      body: Wrap(
        direction: Axis.vertical,
        children: [
          SizedBox.square(
            dimension: 100,
            child: ElevatedButton(onPressed: () {}, child: Text("Click")),
          ),
          SizedBox(height: 20,),
          SizedBox.square(
            dimension: 100,
            child: ElevatedButton(onPressed: () {}, child: Text("Click")),
          ),
          SizedBox(height: 20,),

          SizedBox.square(
            dimension: 100,
            child: ElevatedButton(onPressed: () {}, child: Text("Click")),
          ),
        ],
      ),
    );
  }
}
