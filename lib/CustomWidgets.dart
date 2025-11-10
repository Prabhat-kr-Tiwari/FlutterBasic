import 'package:flutter/material.dart';

void main() {
  runApp(CustomWidget());
}

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Split app into widgets',
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
      home: CustomWidgetScreen(),
    );
  }
}

/*
class CustomWidgetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Split app into widgets")),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
                child: ListView.builder(
                  itemBuilder:
                      (context, index) => Padding(
                        padding: const EdgeInsets.all(11),
                        child: SizedBox(
                          width: 100,
                          child: CircleAvatar(backgroundColor: Colors.green),
                        ),
                      ),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.orange,
                child: ListView.builder(
                  itemBuilder:
                      (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: CircleAvatar(),
                          title: Text("Name"),
                          subtitle: Text("mob"),
                          trailing: Icon(Icons.delete),
                        ),
                      ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.pinkAccent,

                child: ListView.builder(
                  itemBuilder:
                      (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: Colors.blue,
                          ),
                        ),
                      ),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.greenAccent,
                child: GridView.count(
                  crossAxisCount: 4,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(11),color: Colors.pink)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(11),color: Colors.pink)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(11),color: Colors.pink)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(11),color: Colors.pink)),
                    ), Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(11),color: Colors.pink)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(11),color: Colors.pink)),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
//splitting each into single widgets
class CustomWidgetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Split app into widgets")),
      body: Container(
        child: Column(
          children: [
            CatItems(),

            Contact(),

           subItems(),

           BottomMenu(),
          ],
        ),
      ),
    );
  }
}

class CatItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(
          itemBuilder:
              (context, index) => Padding(
                padding: const EdgeInsets.all(11),
                child: SizedBox(
                  width: 100,
                  child: CircleAvatar(backgroundColor: Colors.green),
                ),
              ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
class Contact extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.orange,
        child: ListView.builder(
          itemBuilder:
              (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(),
              title: Text("Name"),
              subtitle: Text("mob"),
              trailing: Icon(Icons.delete),
            ),
          ),
        ),
      ),
    );
  }
}
class subItems extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: 1,
      child: Container(
        color: Colors.pinkAccent,

        child: ListView.builder(
          itemBuilder:
              (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.blue,
              ),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );

  }
}

class BottomMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: 2,
      child: Container(
        color: Colors.greenAccent,
        child: GridView.count(
          crossAxisCount: 4,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.pink,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.pink,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.pink,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.pink,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.pink,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.pink,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBodyWidget extends StatelessWidget {
  const CustomBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Hello from CustomBodyWidget"));
  }
}
