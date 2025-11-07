import 'package:flutter/material.dart';

void main() {
  runApp(ListTileWidget());
}

class ListTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ListTileScreen(),
    );
  }
}

class ListTileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arrNames = ["Prabhat", "Sonu", "TOm", "John","Ryan","Tally","Jacky"];
    return Scaffold(
      appBar: AppBar(
        title: Text("List Tile"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.separated(
        itemBuilder: (context,index){
          return ListTile(
            leading:Text("$index")
              ,
            title:Text( arrNames[index]),
            subtitle: Text("subtitle"),
            trailing: Icon(Icons.accessibility_new_sharp),
          );
        },
        separatorBuilder: (context,index){
          return Divider(height: 100,thickness: 2,endIndent: 10,color: Colors.amber,);
        },
        itemCount: arrNames.length,
      ),
    );
  }
}
