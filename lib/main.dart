import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /* @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.cyanAccent,
          child: Center(
            child: Text("Hello flutter")
          )



        ),
      ) ,

    );
  }*/

  //center widget
  /*  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:Center(
        child: Center(
          child: Container(
              width: 100,
              height: 100,
              color: Colors.cyanAccent,
              child: Center(
                  child: Text("Hello flutter",style: TextStyle(color: Colors.deepOrange),)
              )



          ),
        ),
      ) ,

    );
  }*/

  //text widget
  /* @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Text(
        "Hello Flutter Dev",
        style: TextStyle(
          fontSize: 25,
          color: Colors.deepOrange,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.amber
        ),
      ),
    );
  }*/

  //button widget
  /*  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
     */ /* body: TextButton(
        onPressed: () {
          print("Tapped");
        },
        onLongPress: () {
          print("On Long tapped");
        },
        child: Text("Click"),
      ),*/ /*
   */ /*   body: ElevatedButton(
        onPressed: () {
          print("Tapped");
        },
        onLongPress: () {
          print("On Long tapped");
        },
        child: Text("Elevated button"),
      ),*/ /*

      body: OutlinedButton(
        onPressed: () {
          print("Tapped");
        },
        onLongPress: () {
          print("On Long tapped");
        },
        child: Text("outlined button"),
      ),

    );
  }*/

  //image widget
  /*  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),


      body: Center(child: Image.asset("assets/images/galaxy.jpeg"))

    );
  }*/

  /* @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),

        //
        // body: Column(
        //   children: [
        //     Text('A'),
        //     Text('B'),
        //     Text('C'),
        //     Text('D'),
        //     Text('E')
        //   ],
        // )

      */ /*  body: Row(
          children: <Text>[
            Text('A'),
            Text('B'),
            Text('C'),
            Text('D'),
            Text('E')
          ],
        )*/ /*

        body: Container(

          color: Colors.amber,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("R1"),
                  Text("R2"),
                  Text("R3"),
                  Text("R4")
                ],
              ),
              Text('A'),
              Text('B'),
              Text('C'),
              Text('D'),
              Text('E'),
              ElevatedButton(onPressed: (){}, child: Text("Click"))
            ],
          ),
        )

    );
  }*/

  //row and column
  /* @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),

      //
      // body: Column(
      //   children: [
      //     Text('A'),
      //     Text('B'),
      //     Text('C'),
      //     Text('D'),
      //     Text('E')
      //   ],
      // )
      body: Center(
        child: InkWell(
          onDoubleTap: () {
            print("Double tap");
          },
          onTap: () {
            print("on tap");
          },
          onLongPress: () {
            print("on long press");
          },
          child: Container(
            width: 200,
            height: 400,
            color: Colors.deepOrange,
            child: Center(
              child: InkWell(
                onTap: (){
                  print("Text click");
                },
                child: Text(
                  "Click here",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }*/

  //scrollview
/*  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 11),
                  
                        width: 300,
                        height: 200,
                        color: Colors.green,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 11),
                  
                        width: 300,
                        height: 200,
                        color: Colors.green,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 11),
                  
                        width: 300,
                        height: 200,
                        color: Colors.lightGreenAccent,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 11),
                  
                        width: 300,
                        height: 200,
                        color: Colors.green,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 11),
                  
                        width: 300,
                        height: 200,
                        color: Colors.lightGreenAccent,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),

                height: 200,
                color: Colors.green,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),

                height: 200,
                color: Colors.lightGreenAccent,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),

                height: 200,
                color: Colors.orange,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),

                height: 200,
                color: Colors.cyan,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),

                height: 200,
                color: Colors.yellow,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),

                height: 200,
                color: Colors.red,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),

                height: 200,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }*/

  //listview
/*  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),

      body: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          reverse: true,
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("one",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("two",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("three",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("four",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            ),
          ],
        ),
      ),
    );
  }*/


//listview builder
/*  @override
  Widget build(BuildContext context) {

    var arrNames = ["one","two", "three","four","five","six","seven","eight"];

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),

      body: Center(
        child: ListView.builder(itemBuilder: (context, index) {
          return Text(arrNames[index],style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold));
        },
          itemCount: arrNames.length,
          itemExtent: 100,
          scrollDirection: Axis.horizontal,

        ),
      ),
    );
  }*/


  @override
  Widget build(BuildContext context) {

    var arrNames = ["one","two", "three","four","five","six","seven","eight"];

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),

      body: Center(
        child: ListView.separated(itemBuilder: (context, index) {
          return Text(arrNames[index],style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold));
        },
          itemCount: arrNames.length,
          scrollDirection: Axis.vertical,
          separatorBuilder: (context,index){
          return Divider(height: 4);

          },

        ),
      ),
    );
  }


}
