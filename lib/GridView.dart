import 'package:flutter/material.dart';

void main() {
  runApp(GridviewWidget());
}

class GridviewWidget extends StatelessWidget {
  const GridviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid view',
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
      home: GridviewScreen(),
    );
  }
}

class GridviewScreen extends StatefulWidget {
  @override
  State<GridviewScreen> createState() => _CurrentdateandtimeScreenState();
}

class _CurrentdateandtimeScreenState extends State<GridviewScreen> {
  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    var colors = [
      Colors.amber,
      Colors.red,
      Colors.greenAccent,
      Colors.grey,
      Colors.purpleAccent,
      Colors.lightGreen,
      Colors.pinkAccent,
      Colors.amber,
      Colors.yellowAccent,
      Colors.deepOrange,
    ];
    return Scaffold(
      appBar: AppBar(title: const Text("Grid View ")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: colors.length,
                itemBuilder: (context, index) {
                  return Container(color: colors[index]);
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 11,
                  crossAxisSpacing: 11,

                ),
              ),
              /*
              GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 11,
                mainAxisSpacing: 11,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: colors[0]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: colors[1]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: colors[2]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: colors[3]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: colors[4]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: colors[5]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: colors[6]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: colors[7]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: colors[0]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: colors[1]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: colors[2]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: colors[3]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: colors[4]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: colors[5]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: colors[6]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: colors[7]),
                  ),

                ],
              ),
*/
            ),
          ],
        ),
      ),
    );
  }
}
