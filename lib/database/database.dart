import 'package:flutter/material.dart';
import 'package:flutter_basic/database/data/home_page.dart';
import 'package:flutter_basic/database/data/local/db_helper.dart';
import 'package:flutter_basic/database/dbProvider.dart';
import 'package:flutter_basic/database/theme_provider.dart';
import 'package:provider/provider.dart';

/*
void main () {
  runApp(FlutterDatabaseWidget());
}*/

/*void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => DBProvider(dbHelper: DBHelper.getInstance()),
      child: FlutterDatabaseWidget(),
    ),
  );
}*/
void main() {
  runApp(
    MultiProvider(
      providers: [

        ChangeNotifierProvider(create:  (context) => DBProvider(dbHelper: DBHelper.getInstance())),
        ChangeNotifierProvider(create:  (context) => ThemeProvider()),
      ],
      child: FlutterDatabaseWidget(),
    ),
  );
}

class FlutterDatabaseWidget extends StatelessWidget {
  const FlutterDatabaseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLutter database',
      debugShowCheckedModeBanner: false,
      themeMode: context.watch<ThemeProvider>().getThemeValue()? ThemeMode.dark:ThemeMode.light,
      darkTheme: ThemeData.dark(),
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
  State<DatabaseScreen> createState() => _DatabaseScreenState();
}

class _DatabaseScreenState extends State<DatabaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Database")),
      body: Container(child: Text("data")),
    );
  }
}
