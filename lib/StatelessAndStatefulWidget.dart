import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(StatelessAndStatefulWidget());
}

class StatelessAndStatefulWidget extends StatelessWidget {
  const StatelessAndStatefulWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StatelessAndStatefulWidget',
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
      home: MyHomePage(),
    );
  }
}

/*class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
  
}
class MyHomePageState extends State<MyHomePage>{
  var count =0;
  void increment(){
    setState(() {
      count++;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter: $count",style: TextStyle(fontSize: 34),),
            ElevatedButton(onPressed: (){
              increment();
            }, child: Text("increment"))
          ],
        ),
      ),
    );
  }
  
}*/

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }

}
class MyHomePageState extends State<MyHomePage>{
  var count =0;
  void increment(){
    setState(() {
      count++;

    });
  }
  int result=0;
  var firstValueController= TextEditingController();
  var secondValueController= TextEditingController();
  void add(var firstValue,var secondValue){
    setState(() {
      result =   firstValue+secondValue;
    });

  }
  void subtract(var firstValue,var secondValue){
    setState(() {
      result =   firstValue-secondValue;
    });

  }

  @override
  void dispose() {
    firstValueController.dispose();
    secondValueController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Basic Calculation"),),
      body: Container(
        color: Colors.blue.shade100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextField(controller: firstValueController,keyboardType: TextInputType.number,),
              TextField(controller: secondValueController,keyboardType: TextInputType.number,),
              Padding(
                padding: const EdgeInsets.all(21.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    ElevatedButton(onPressed: (){


                      add(int.parse(firstValueController.text.toString()), int.parse(secondValueController.text.toString()));
                    }, child: Text("Add")),
                    ElevatedButton(onPressed: (){
                      subtract(int.parse(firstValueController.text.toString()), int.parse(secondValueController.text.toString()));

                    }, child: Text("Sub")),
                    ElevatedButton(onPressed: (){

                    }, child: Text("Mult")),
                    ElevatedButton(onPressed: (){

                    }, child: Text("Div"))
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(21),child: Text("Result $result",style: TextStyle(fontSize: 25,color: Colors.grey),),)
            ],
          ),
        ),
      ),
    );
  }

}

