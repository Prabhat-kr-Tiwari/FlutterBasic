import 'package:flutter/material.dart';
import 'package:flutter_basic/providerStateManagement/add_data.dart';
import 'package:flutter_basic/providerStateManagement/list_map_provider.dart';
import 'package:provider/provider.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List")),
      body: Container(
        child: Consumer<ListMapProvider>(
          builder: (ctx, provider, _) {
            var alldata = provider.getData();
            return alldata.isNotEmpty
                ? ListView.builder(
                  itemCount: alldata.length,
                  itemBuilder: (_, index) {
                    return ListTile(
                      title: Text("${alldata[index]['name']}"),
                      subtitle: Text("${alldata[index]['mobile']}"),
                      trailing: SizedBox(
                        width: 120,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                context.read<ListMapProvider>().updateData(
                                  {
                                    "name": "Contact name new",
                                    "mobile": "7414563",
                                  },
                                  index,
                                );
                              },
                              icon: Icon(Icons.edit),
                            ),
                            IconButton(
                              onPressed: () {
                                context.read<ListMapProvider>().delete(index);
                              },
                              icon: Icon(Icons.delete, color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
                : Center(child: Text("No contacts"));
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddDataPage()),
          );
          /*   context.read<ListMapProvider>().addData({
          "name": "Contact name",
          "mobile": "23454232",
        });*/
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
