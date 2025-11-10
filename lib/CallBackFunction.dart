import 'package:flutter/material.dart';

void main() {
  runApp(CallbackfunctionWidget());
}

class CallbackfunctionWidget extends StatelessWidget {
  const CallbackfunctionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Call BAck function',
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
      home: CallbackfunctionScreen(),
    );
  }
}

class CallbackfunctionScreen extends StatefulWidget {
  @override
  State<CallbackfunctionScreen> createState() =>
      _CurrentdateandtimeScreenState();
}

class _CurrentdateandtimeScreenState extends State<CallbackfunctionScreen> {

  callBack() {
    print("CLicked");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CallBack Function")),
      body: ElevatedButton(
        /* onPressed: () {
        callBack();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Clicked")),
        );*/
          onPressed: callBack

          , child: Text("tap")),
    );
  }
}
