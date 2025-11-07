import 'package:flutter/material.dart';
import 'package:flutter_basic/ui_helper/util.dart';

void main(){
  runApp(CardWidget());
}
class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true, // default, optional
        textTheme: TextTheme(
            headlineSmall:  TextStyle(fontSize: 21,fontFamily: 'MomoSignatureFont',fontWeight: FontWeight.bold),
            labelSmall: TextStyle(fontSize: 11,fontFamily: 'MomoSignatureFont',fontWeight: FontWeight.w500,fontStyle: FontStyle.italic)

        ),
      ),
      home: CardwidgetScreen(),
    );
  }
}
class CardwidgetScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar( title: Text("Card Widget"),),
      body: Center(
        child: Card(
          shadowColor: Colors.greenAccent,
          elevation: 5,
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Hello word",style: TextStyle(fontSize: 25),),
        )),
      ),
    );
  }

}