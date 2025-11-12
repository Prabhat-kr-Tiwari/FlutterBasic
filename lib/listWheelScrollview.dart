import 'package:flutter/material.dart';
import 'package:flutter_basic/animation/DetailHeroPage.dart';

void main() {
  runApp(ListWheelScrollViewWidget());
}

class ListWheelScrollViewWidget extends StatelessWidget {
  const ListWheelScrollViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListWheelScrollViewWidget',
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
      home: ListwheelscrollviewScreen(),
    );
  }
}

class ListwheelscrollviewScreen extends StatefulWidget {
  @override
  State<ListwheelscrollviewScreen> createState() =>
      _ListwheelscrollviewScreenState();
}

class _ListwheelscrollviewScreenState extends State<ListwheelscrollviewScreen> {

  var arrIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List Wheel Scrollview")),
      body: Center(
        child: ListWheelScrollView(
          itemExtent: 200,
          children:
          arrIndex.map((value) =>
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(color: Colors.blue,
                        borderRadius: BorderRadius.circular(21)),

                    width: double.infinity,
                    child:Center(child: Text("$value",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 34,color: Colors.white),))
                ),
              )).toList()
          ,
        ),
      ),
    );
  }
}
