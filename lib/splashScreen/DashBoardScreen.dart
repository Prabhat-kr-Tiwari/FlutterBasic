import 'package:flutter/material.dart';
import 'package:flutter_basic/navigation/IntroPage.dart';
import 'package:flutter_basic/splashScreen/MyProfile.dart';
import 'package:flutter_basic/splashScreen/splashScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(DashBoardScreenWidget());
}

class DashBoardScreenWidget extends StatelessWidget {
  const DashBoardScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DashBoardScreenWidget',
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

class DashboardScreen extends StatefulWidget {
  @override
  State<DashboardScreen> createState() =>
      _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashboardScreen> {
  var nameConttroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DashboardScreen")),
      body:Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("DashBoard Screen",style: TextStyle(fontSize: 25),)
             , SizedBox(height: 11,),

              TextField(controller: nameConttroller,)
          , SizedBox(height: 11,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfile(nameConttroller.text.toString())));
              }, child: Text("My Profile"))
            ],
          ),

        ),
      ),
    );
  }
}
