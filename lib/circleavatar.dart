import 'package:flutter/material.dart';

void main() {
  runApp(CircleAvatarWidget());
}

class CircleAvatarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: CircleavatarScreen(),
    );
  }
}


/*class CircleavatarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arrNames = ["Prabhat", "Sonu", "Tom", "John", "Ryan", "Tally", "Jacky"];
    return Scaffold(
      appBar: AppBar(
        title: Text("Circle Avatar"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: CircleAvatar(

          backgroundColor: Colors.blue,
          child: Text(
            arrNames[0][0], // First letter of "Prabhat"
            style: TextStyle(fontSize: 30, color: Colors.amberAccent),
          ),
          backgroundImage: AssetImage('assets/images/galaxy.jpeg'),
          minRadius: 50,
          maxRadius: 100,
        ),
      ),
    );
  }
}*/

class CircleavatarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circle Avatar"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: CircleAvatar(
          backgroundColor: Colors.blue,
          minRadius: 50,
          maxRadius: 100,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/galaxy.jpeg', width: 30, height: 30),
              SizedBox(height: 4),
              Text("Name", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}


