import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(SharedPrefWidget());
}

class SharedPrefWidget extends StatelessWidget {
  const SharedPrefWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SharedPrefWidget',
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
      home: SharedprefrenceScreen(),
    );
  }
}

class SharedprefrenceScreen extends StatefulWidget {
  @override
  State<SharedprefrenceScreen> createState() =>
      _SharedprefScreenState();
}

class _SharedprefScreenState extends State<SharedprefrenceScreen> {
  var nameController= TextEditingController();
  static const String  KEYNAME = "name";
  var nameValue="";
  @override
  void initState() {
    super.initState();
    getValue();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shared prefrence")),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(controller: nameController,),
            ElevatedButton(onPressed: () async {
              var name = nameController.text.toString();
              var pref= await SharedPreferences.getInstance();
              pref.setString(KEYNAME, name);

            }, child: Text("Save")),
            SizedBox(height: 11),
            Text("saved value $nameValue" ),
          ],
        ),
      ),
    );
  }

  Future<void> getValue() async {
    var pref = await SharedPreferences.getInstance();
    var getName =  pref.getString(KEYNAME);
    nameValue =  getName!=null?getName:"No value";
    setState(() {

    });


  }
}
