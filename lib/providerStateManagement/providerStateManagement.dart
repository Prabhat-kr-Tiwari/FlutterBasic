import 'package:flutter/material.dart';
import 'package:flutter_basic/providerStateManagement/list_map_provider.dart';
import 'package:flutter_basic/providerStateManagement/list_page.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=>ListMapProvider()),
      ChangeNotifierProvider(create: (context)=>CounterProvider()),
    ],child:   ProviderStateManagementWidget(),)

  );
}

class ProviderStateManagementWidget extends StatelessWidget {
  const ProviderStateManagementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider statemanagement',
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
      /*home: ChangeNotifierProvider(
        create:(_)=>ListMapProvider(),
        child: ListPage(),
      )*/

      home: ListPage()
      ,
    );
  }
}

/*class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(child: Text("count = $_count", style: TextStyle(fontSize: 25))),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _count++;
        setState(() {
          
        });
      },child: Icon(Icons.add),
      ),
    );
  }
}*/
class HomePage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(child:
      // Text("count = ${Provider.of<CounterProvider>(context,listen: true).getCount()}", style: TextStyle(fontSize: 25))
        Consumer<CounterProvider>(builder: (ctx,_,__){
          return Text(
              // "count = ${Provider.of<CounterProvider>(ctx,listen: true).getCount()}", style: TextStyle(fontSize: 25)
              "count = ${ctx.watch<CounterProvider>().getCount()}", style: TextStyle(fontSize: 25)
          );
        },)


      ),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(onPressed: () {
            // Provider.of<CounterProvider>(context,listen: false).incrementCount();
            context.read<CounterProvider>().incrementCount();

          },child: Icon(Icons.add),),
          FloatingActionButton(onPressed: () {
            // Provider.of<CounterProvider>(context,listen: false).incrementCount();
            context.read<CounterProvider>().decrementCount();

          },child: Icon(Icons.remove),),
        ],
      ),
    );
  }


}
