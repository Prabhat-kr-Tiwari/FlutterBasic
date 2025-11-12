import 'package:flutter/material.dart';

void main() {
  runApp(AnimatedOpacityWidget());
}

class AnimatedOpacityWidget extends StatelessWidget {
  const AnimatedOpacityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnimatedOpacityWidget',
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
      home: AnimatedOPacityScreen(),
    );
  }
}

class AnimatedOPacityScreen extends StatefulWidget {
  @override
  State<AnimatedOPacityScreen> createState() => _AnimatedOPacityScreenState();
}

class _AnimatedOPacityScreenState extends State<AnimatedOPacityScreen> {

  var opacity=1.0;
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AnimatedOPacity")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacity,
              duration: Duration(seconds: 1),
              curve: Curves.easeInCirc,
              child: Container(
                width: 200,
                height: 100,
                color: Colors.red,
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                if(flag){
                  flag = false;
                  opacity=0.0;

                }else{
                  flag = true;
                  opacity =1.0;

                }

              });
            }, child: Text("Close"))
          ],
        ),
      ),
    );
  }
}
