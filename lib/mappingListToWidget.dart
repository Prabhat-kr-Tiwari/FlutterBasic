import 'package:flutter/material.dart';

void main() {
  runApp(MapppingListToWidget());
}

class MapppingListToWidget extends StatelessWidget {
  const MapppingListToWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MapppingListToWidget',
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
      home: MapppingListToWidgetScreen(),
    );
  }
}

class MapppingListToWidgetScreen extends StatefulWidget {
  @override
  State<MapppingListToWidgetScreen> createState() =>
      _MapppingListToWidgetScreenScreenState();
}

class _MapppingListToWidgetScreenScreenState
    extends State<MapppingListToWidgetScreen> {
  var arrData = [
    { "name": "Ravi", "address": "123 Main Street, Delhi", "mobile": "9876543210" },
    { "name": "Rajver", "address": "45 MG Road, Mumbai", "mobile": "9123456780" },
    { "name": "Rohit", "address": "78 Park Avenue, Pune", "mobile": "9988776655" },
    { "name": "Sonu", "address": "56 Civil Lines, Lucknow", "mobile": "9090909090" },
    { "name": "Monu", "address": "22 Patel Nagar, Jaipur", "mobile": "9812345678" },
    { "name": "Mohit", "address": "67 Sector 15, Noida", "mobile": "8800112233" },
    { "name": "Ronu", "address": "9 MG Road, Chennai", "mobile": "9001234567" },
    { "name": "Pawan", "address": "11 Residency Road, Bengaluru", "mobile": "7777888899" },
    { "name": "Golu", "address": "43 Connaught Place, Delhi", "mobile": "9099887766" },
    { "name": "John", "address": "21 Church Street, Goa", "mobile": "7001239876" },
    { "name": "Mohan", "address": "87 LBS Marg, Nagpur", "mobile": "9800765432" },
    { "name": "Rohan", "address": "64 Nehru Nagar, Indore", "mobile": "9612347890" },
    { "name": "Sohan", "address": "15 Tilak Road, Bhopal", "mobile": "9512345670" },
    { "name": "Ram", "address": "5 Gandhi Chowk, Varanasi", "mobile": "9123450987" },
    { "name": "Ram", "address": "5 Gandhi Chowk, Varanasi", "mobile": "9123450987" },
    { "name": "Ram", "address": "5 Gandhi Chowk, Varanasi", "mobile": "9123450987" },
    { "name": "Ram", "address": "5 Gandhi Chowk, Varanasi", "mobile": "9123450987" }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MapppingListToWidget")),
      body: Container(
        color: Colors.white,
        child: ListView(
          children:
              arrData.map((value) =>
              ListTile(leading: Icon(Icons.account_circle),title: Text(value['name'].toString()),subtitle: Text(value["address"].toString()),)
              ).toList(),
        ),
      ),
    );
  }
}
