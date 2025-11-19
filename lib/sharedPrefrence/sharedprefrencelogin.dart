import 'package:flutter/material.dart';
import 'package:flutter_basic/sharedPrefrence/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../sharedPrefrence/splashScreen.dart';

void main() {
  runApp(SharedPrefLoginWidget());
}

class SharedPrefLoginWidget extends StatelessWidget {
  const SharedPrefLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SharedPrefWidget login',
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
      home: SplashScreen(),
    );
  }
}

class SharedprefrenceLoginScreen extends StatefulWidget {
  @override
  State<SharedprefrenceLoginScreen> createState() =>
      _SharedprefLoginScreenState();
}

class _SharedprefLoginScreenState extends State<SharedprefrenceLoginScreen> {
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  static const String ISLOGIN = "islogin";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shared prefrence Lo gin")),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(controller: nameController),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(controller: passwordController),
            ),
            ElevatedButton(
              onPressed: () async {
                var name = nameController.text.toString();
                var password = passwordController.text.toString();
                var pref = await SharedPreferences.getInstance();
                pref.setBool(ISLOGIN, true);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text("Login"),
            ),
            SizedBox(height: 11),
          ],
        ),
      ),
    );
  }
}
