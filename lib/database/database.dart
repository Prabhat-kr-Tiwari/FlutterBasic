import 'package:flutter/material.dart';
import 'package:flutter_basic/database/data/home_page.dart';


void main() {
  runApp(FlutterDatabaseWidget());
}

class FlutterDatabaseWidget extends StatelessWidget {
  const FlutterDatabaseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLutter database',
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
      home: HomePage(),
    );
  }
}

class DatabaseScreen extends StatefulWidget {
  @override
  State<DatabaseScreen> createState() =>
      _DatabaseScreenState();
}

class _DatabaseScreenState extends State<DatabaseScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Database")),
      body: Container(
        child: Text("data"),
      ),
    );
  }
}
