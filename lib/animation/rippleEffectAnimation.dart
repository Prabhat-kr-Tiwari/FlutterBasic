import 'package:flutter/material.dart';

void main() {
  runApp(RippleEffectAnimationWidget());
}

class RippleEffectAnimationWidget extends StatelessWidget {
  const RippleEffectAnimationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RippleEffectAnimationWidget',
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
      home: RippleeffectAnimationScreen(),
    );
  }
}

class RippleeffectAnimationScreen extends StatefulWidget {
  @override
  State<RippleeffectAnimationScreen> createState() =>
      _RippleEffectAnimationScreenState();
}

class _RippleEffectAnimationScreenState
    extends State<RippleeffectAnimationScreen>
    with SingleTickerProviderStateMixin {
  late Animation _animation;
  late AnimationController _animationController;
  late Animation colorAnimation;

  var listRadius = [150.0, 200.0, 250.0, 300.0, 350.0];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
      lowerBound: 0.5
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);
    colorAnimation = ColorTween(
      begin: Colors.blue,
      end: Colors.orange,
    ).animate(_animationController);
    _animationController.addListener(() {
      print(_animation.value);
      setState(() {});
    });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ripple effect animation")),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children:[
            rippleWidget(listRadius[0]),
            rippleWidget(listRadius[1]),
            rippleWidget(listRadius[2]),
            rippleWidget(listRadius[3]),
            rippleWidget(listRadius[4]),
            Icon(Icons.call)
          ],
        ),
      ),
    );
  }
  Widget rippleWidget(radius){
    return  Container(
      decoration: BoxDecoration(shape: BoxShape.circle,
          color: Colors.blue.withOpacity(1.0 - _animation.value)),

      width: radius * _animation.value,
      height: radius * _animation.value,
    );
  }
}
