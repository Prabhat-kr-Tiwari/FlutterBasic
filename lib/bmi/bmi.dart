import 'package:flutter/material.dart';

void main() {
  runApp(BmiAppWidget());
}

class BmiAppWidget extends StatelessWidget {
  const BmiAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BmiAppWidget',
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
      home: BmiScreen(),
    );
  }
}

class BmiScreen extends StatefulWidget {
  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  var weightController = TextEditingController();
  var fitController = TextEditingController();
  var inchController = TextEditingController();
  var result ="";
  var bgColors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bmi"),backgroundColor: bgColors,
      ),
      body: Container(
        color: bgColors,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'BMI',
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                ),
                TextField(
                  controller: weightController,
                  decoration: InputDecoration(
                    label: Text("Enter your weight"),
                    prefix: Icon(Icons.line_weight),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 11,),
                TextField(
                  controller: fitController,
                  decoration: InputDecoration(
                    label: Text("Enter your Height in fit"),
                    prefix: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 11,),
                TextField(
                  controller: inchController,
                  decoration: InputDecoration(
                    label: Text("Enter your Height in inch"),
                    prefix: Icon(Icons.height),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16,),
                ElevatedButton(onPressed: (){
                  var weight =  weightController.text.toString();
                  var fit =  fitController.text.toString();
                  var inch =  inchController.text.toString();
                  if(weight!=""&&fit!=""&&inch!=""){
                    //bmi
                    var iwt = int.parse(weight);
                    var ifit = int.parse(fit);
                    var iinch = int.parse(inch);

                    var totalInch = (ifit*12)+iinch;
                    var totalcm =  totalInch*2.54;
                    var totalM=totalcm/100;
                    var bmi = iwt/(totalM*totalM);
                    var msg="";
                    setState(() {
                      if(bmi>25){
                        msg = "You're OverWeight";
                        bgColors = Colors.orange.shade200;

                      }else if(bmi<18){
                        msg = "You're UnderWeight";
                        bgColors = Colors.red.shade200;
                      }else{
                        msg = "You're Healthy";
                        bgColors = Colors.green.shade200;
                      }
                      result = "$msg \n Your BMI is ${bmi.toStringAsFixed(2)}";
                    });

                  }else{
                    setState(() {
                      result = "Fill all required feilds";
                    });
                  }
                }, child: Text("Calculate")),
                SizedBox(height: 16,),

                Text(result,style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
