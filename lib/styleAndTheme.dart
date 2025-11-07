import 'package:flutter/material.dart';
import 'package:flutter_basic/ui_helper/util.dart';

void main(){
  runApp(StyleandthemeWidget());
}
class StyleandthemeWidget extends StatelessWidget {
  const StyleandthemeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Style And Theme',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true, // default, optional
        textTheme: TextTheme(
           headlineSmall:  TextStyle(fontSize: 21,fontFamily: 'MomoSignatureFont',fontWeight: FontWeight.bold),
          labelSmall: TextStyle(fontSize: 11,fontFamily: 'MomoSignatureFont',fontWeight: FontWeight.w500,fontStyle: FontStyle.italic)

        )
          ,



      ),
      home: StyleandthemeScreen(),
    );
  }
}
class StyleandthemeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar( title: Text("Style And Theme"),),
      body: Center(child: Column(
        children: [
          Text("Hello" ,style:Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.blue)),
          Text("Hello" ,style:Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.deepOrange)),
          Text("Hello" ,style:TextStyle(fontSize: 21,fontFamily: 'MomoSignatureFont',fontWeight: FontWeight.w500)),
          Text("Hello" ,style:TextStyle(fontSize: 11,fontFamily: 'MomoSignatureFont',fontWeight: FontWeight.w500,fontStyle: FontStyle.italic)),
          Text("Hello" ,style:myTextStyle11()),
          Text("Hello" ,style:myTextStyle21(textColor: Colors.greenAccent)),
        ],
      )),
    );
  }

}