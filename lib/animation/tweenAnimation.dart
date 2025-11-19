import 'package:flutter/material.dart';

void main() {
  runApp(TweenAnimationWidget());
}

class TweenAnimationWidget extends StatelessWidget {
  const TweenAnimationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TweenAnimationWidget',
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
      home: TweenAnimationScreen(),
    );
  }
}

class TweenAnimationScreen extends StatefulWidget {
  @override
  State<TweenAnimationScreen> createState() => _TweenAnimationScreenState();
}

class _TweenAnimationScreenState extends State<TweenAnimationScreen>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;
  late Animation colorAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );
    animation = Tween(begin: 0.0, end: 200.0).animate(animationController);
    colorAnimation = ColorTween(
      begin: Colors.blue,
      end: Colors.orange,
    ).animate(animationController);
    animationController.addListener(() {
      print(animation.value);
      setState(() {});
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tween Animation")),
      body: Container(
        width: animation.value,
        height: animation.value,
        color: colorAnimation.value,
      ),
    );
  }
}
