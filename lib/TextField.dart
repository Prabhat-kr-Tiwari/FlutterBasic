import 'package:flutter/material.dart';

void main() {
  runApp(TextFieldWidget());
}

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField',
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
      home: TextfieldScreen(),
    );
  }
}

class TextfieldScreen extends StatelessWidget {
  var emailText =  TextEditingController();
  var passwordText =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextField")),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailText,
                // enabled: false,

                decoration: InputDecoration(
                    hintText: "Email",

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.greenAccent, width: 2),

                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.blueAccent, width: 2),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.blueAccent),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.black38, width: 2),
                    )
                    // , suffixText:"UserName exists"
                    ,suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye),color: Colors.amber,)
                    ,prefixIcon:  Icon(Icons.email,color: Colors.amber,)

                ),
              ),

              Container(height: 11),
              TextField(
                keyboardType: TextInputType.number,
                keyboardAppearance: Brightness.light,
                obscureText: true,
                obscuringCharacter: "*",
                controller: passwordText,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(color: Colors.greenAccent),
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){
                String uEmail = emailText.text.toString();
                String uPass = passwordText.text.toString();
                print("EMail $uEmail pass $uPass");

              }, child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
