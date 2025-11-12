import 'package:flutter/material.dart';
import 'package:flutter_basic/animation/DetailHeroPage.dart';

void main() {
  runApp(HeroAnimationWidget());
}

class HeroAnimationWidget extends StatelessWidget {
  const HeroAnimationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HeroAnimationWidget',
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
      home: HeroanimationScreen(),
    );
  }
}

class HeroanimationScreen extends StatefulWidget {
  @override
  State<HeroanimationScreen> createState() => _HeroAnimationScreenState();
}

class _HeroAnimationScreenState extends State<HeroanimationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hero ANimation")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailHeropage()));
              },
              child: Hero(
                tag: "background",
                child: Image.asset(
                  "assets/images/MainBefore.jpg",
                  width: 150,
                  height: 100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
