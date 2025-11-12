import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(CrossFadeWidget());
}

class CrossFadeWidget extends StatelessWidget {
  const CrossFadeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CrossFadeWidget',
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
      home: CrossfadeScreen(),
    );
  }
}

class CrossfadeScreen extends StatefulWidget {
  @override
  State<CrossfadeScreen> createState() => _CrossFadeScreenState();
}

class _CrossFadeScreenState extends State<CrossfadeScreen> {
  var opacity = 1.0;
  bool flag = true;
@override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4),(){
      reload();
    });
  }
  void reload(){
  setState(() {

    if(flag){
      flag = false;
    }else{
      flag = true;
    }
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cross Fade")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              firstChild: Container(width: 200, height: 200, color: Colors.red),
              secondChild: Image.asset('assets/images/galaxy.jpeg',width: 100,height: 100,),

              crossFadeState: flag?CrossFadeState.showFirst:CrossFadeState.showSecond,
              duration: Duration(seconds: 2),
              // sizeCurve: Curves.fastOutSlowIn,
              firstCurve: Curves.easeInOut,
              secondCurve: Curves.bounceOut,
            ),
            ElevatedButton(
              onPressed: () {
                reload();

                /*setState(() {
                  if (flag) {
                    flag = false;
                  } else {
                    flag = true;

                  }
                });*/
              },
              child: Text("Close"),
            ),
          ],
        ),
      ),
    );
  }
}
