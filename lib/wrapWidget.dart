import 'package:flutter/material.dart';

void main() {
  runApp(WrapWidget());
}

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WrapWidget',
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
      home: WrapWidgetScreen(),
    );
  }
}

class WrapWidgetScreen extends StatefulWidget {
  @override
  State<WrapWidgetScreen> createState() =>
      _WrapWidgetScreenState();
}

class _WrapWidgetScreenState extends State<WrapWidgetScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("WrapWidgetScreen")),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.spaceAround,
          spacing: 11,
          runSpacing: 11,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.greenAccent,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),Container(
              width: 100,
              height: 100,
              color: Colors.yellowAccent,
            )
            ,Container(
              width: 100,
              height: 100,
              color: Colors.lightGreenAccent,
            ),Container(
              width: 100,
              height: 100,
              color: Colors.grey,
            ),Container(
              width: 100,
              height: 100,
              color: Colors.yellowAccent,
            )
            ,Container(
              width: 100,
              height: 100,
              color: Colors.lightGreenAccent,
            ),Container(
              width: 100,
              height: 100,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
