import 'package:flutter/material.dart';

void main() {
  runApp(RangeSliderWidget());
}

class RangeSliderWidget extends StatelessWidget {
  const RangeSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RangeSliderWidget',
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
      home: RangeSliderWidgetScreen(),
    );
  }
}

class RangeSliderWidgetScreen extends StatefulWidget {
  @override
  State<RangeSliderWidgetScreen> createState() =>
      _RangeSliderWidgetScreenScreenState();
}

class _RangeSliderWidgetScreenScreenState
    extends State<RangeSliderWidgetScreen> {
  RangeValues rangeValues = RangeValues(0, 1);

  @override
  Widget build(BuildContext context) {
    RangeLabels rangeLabels = RangeLabels(
      rangeValues.start.toString(),
      rangeValues.end.toString(),
    );
    return Scaffold(
      appBar: AppBar(title: const Text("RangeSliderWidget")),
      body: Center(
        child: RangeSlider(
          activeColor: Colors.orange,
          inactiveColor: Colors.orange.shade50,
          values: rangeValues,
          labels: rangeLabels,
          divisions: 10,
          min: 0,
          max: 100,
          onChanged: (newValue) {
            rangeValues = newValue;
            setState(() {});
          },
        ),
      ),
    );
  }
}
