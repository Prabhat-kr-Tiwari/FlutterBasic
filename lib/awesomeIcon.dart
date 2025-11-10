import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(AwesomeiconWidget());
}

class AwesomeiconWidget extends StatelessWidget {
  const AwesomeiconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awesome',
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
      home: AwesomeIconWidgetScreen(),
    );
  }
}

class AwesomeIconWidgetScreen extends StatefulWidget {
  @override
  State<AwesomeIconWidgetScreen> createState() =>
      _AwesomeIconWidgetScreenState();
}

class _AwesomeIconWidgetScreenState extends State<AwesomeIconWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Awesome")),
      body:Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Icon(Icons.add_a_photo,size: 100,color: Colors.orange,)),
            SizedBox(width: 30,),
            FaIcon(FontAwesomeIcons.amazon,fontWeight: FontWeight.bold,color: Colors.orange,)
          ],
        ),
      ),
    );
  }
}
