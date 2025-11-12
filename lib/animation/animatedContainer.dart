import 'package:flutter/material.dart';

void main() {
  runApp(AnimatedContainerWidget());
}

class AnimatedContainerWidget extends StatelessWidget {
  const AnimatedContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnimatedContainerWidget',
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
      home: AnimatedcontainerWidgetScreen(),
    );
  }
}

class AnimatedcontainerWidgetScreen extends StatefulWidget {
  @override
  State<AnimatedcontainerWidgetScreen> createState() =>
      _AnimatedWidgetScreenScreenState();
}

class _AnimatedWidgetScreenScreenState
    extends State<AnimatedcontainerWidgetScreen> {
  var _width=200.0;
  var _height=100.0;
  bool flag = true;
  var colors = Colors.green;
  Decoration myDecor = BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.green);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: const Text("Animated container")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              curve: Curves.bounceOut,
              width: _width,
              height: _height,
              duration: Duration(seconds: 2),
              decoration: myDecor,
            ),
            ElevatedButton(onPressed: () {


              setState(() {
                if(flag){
                  flag=false;
                   _width=200.0;
                   _height=100.0;
                   colors =  Colors.green;
                   myDecor= BoxDecoration(borderRadius: BorderRadius.circular(21),color: Colors.green);
                }else{
                  flag=true;
                  colors =  Colors.red;
                  _width=200.0;
                  _height=50.0;
                  myDecor= BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.red);

                }

              });

            }, child: Text("Animate")),
          ],
        ),
      ),
    );
  }
}
