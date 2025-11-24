import 'package:flutter/material.dart';
import 'package:flutter_basic/providerStateManagement/list_map_provider.dart';
import 'package:provider/provider.dart';

class AddDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add data")),
      body: Center(
        child: IconButton(
          onPressed: () {
            context.read<ListMapProvider>().addData({
              "name": "Contact name",
              "mobile": "2345653",
            });
          },
          icon: Icon(Icons.add),
        ),
      ),
    );
  }
}
