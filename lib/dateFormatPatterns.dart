import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
void main(){
  runApp(DateformatpatternsWidget());
}

class DateformatpatternsWidget extends StatelessWidget {
  const DateformatpatternsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Date Format Patterns',
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
      home: DateformatpatternsScreen(),
    );
  }
}
class DateformatpatternsScreen extends StatefulWidget {
  @override
  State<DateformatpatternsScreen> createState() => _CurrentdateandtimeScreenState();
}

class _CurrentdateandtimeScreenState extends State<DateformatpatternsScreen> {
  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Date Format Patterns")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Current Time: ${DateFormat("yMMMd").format(time)}", style: const TextStyle(fontSize: 20)),
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
