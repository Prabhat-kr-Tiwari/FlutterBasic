import 'package:flutter/material.dart';
import 'package:flutter_basic/ui_helper/util.dart';

void main(){
  runApp(CurrentdateandtimeWidget());
}

class CurrentdateandtimeWidget extends StatelessWidget {
  const CurrentdateandtimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Current date and time',
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
      home: CurrentdateandtimeScreen(),
    );
  }
}
class CurrentdateandtimeScreen extends StatefulWidget {
  @override
  State<CurrentdateandtimeScreen> createState() => _CurrentdateandtimeScreenState();
}

class _CurrentdateandtimeScreenState extends State<CurrentdateandtimeScreen> {
  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Current date and time")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Current Time: ${
                time.year}", style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  time = DateTime.now();
                });
              },
              child: const Text("Refresh Time"),
            ),
          ],
        ),
      ),
    );
  }
}
