import 'package:flutter/material.dart';
import 'package:flutter_basic/database/data/local/db_helper.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePage> {
  List<Map<String, dynamic>> myNotes = [];
  DBHelper? dbHelper;
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    dbHelper = DBHelper.getInstance();
    getNotes();
  }

  void getNotes() async {
    myNotes = await dbHelper!.getAllNotes();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notes")),
      body:
          myNotes.isNotEmpty
              ? ListView.builder(
                itemCount: myNotes.length,
                itemBuilder: (context, index) {
                  //note added from here
                  return ListTile(
                    leading: Text(
                      '${index+1}',
                    ),
                    title: Text(
                      myNotes[index][dbHelper!.COLUMN_NOTE_TITLE] ?? "No Title",
                    ),
                    subtitle: Text(
                      myNotes[index][dbHelper!.COLUMN_NOTE_DESCRIPTION],
                    ),
                    trailing: SizedBox(
                      width: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(onTap:(){

                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (bottomSheetContext) {
                                titleController.text = myNotes[index][dbHelper?.COLUMN_NOTE_TITLE];
                                descriptionController.text = myNotes[index][dbHelper?.COLUMN_NOTE_DESCRIPTION];
                                return getBottomSheet(isUpdate: true,sno:myNotes[index][dbHelper?.COLUMN_NOTE_SNO] ) ;
                              },
                            );
                          },child: Icon(Icons.edit)),
                          InkWell(onTap:() async {
                           bool? rowAffected =  await dbHelper?.deleteNote(sno: myNotes[index][dbHelper?.COLUMN_NOTE_SNO]);
                           if(rowAffected!){
                             getNotes();
                           }


                          },child: Icon(Icons.delete,color: Colors.red,))
                        ],
                      ),
                    ),
                  );
                },
              )
              : Center(child: Text("No notes yet")),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {

          /*bool? isNotesAdded =  await dbHelper?.addNote(title: "my note1", description: "read system design");
         if(isNotesAdded!){
           getNotes();
         }*/
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (bottomSheetContext) {
              return getBottomSheet() ;
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
  Widget getBottomSheet({bool isUpdate = false,int sno=0}){
    return Container(

      padding: EdgeInsets.only(left: 11,right: 11,top: 11,bottom: MediaQuery.of(context).viewInsets.bottom),
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
             isUpdate?"Update Note":"Add note" ,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 21),
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                hintText: "Enter title here",
                label: Text("Title"),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
              ),
            ),
            SizedBox(height: 21),
            TextField(
              maxLines: 5,
              controller: descriptionController,
              decoration: InputDecoration(
                hintText: "Enter description here",
                label: Text("Description"),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
              ),
            ),
            SizedBox(height: 11),

            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                    ),
                    onPressed: () async {

                      var title = titleController.text;
                      var description = descriptionController.text;
                      if(title.isNotEmpty&&description.isNotEmpty){
                        if(isUpdate){
                          bool? isNotesUpdate =   await dbHelper?.updateNote(title: titleController.text.toString(), description: descriptionController.text.toString(),sno:sno );
                          if(isNotesUpdate!){
                            getNotes();
                            Navigator.pop(context);
                            titleController.clear();
                            descriptionController.clear();
                          }

                        }else{
                          bool? isNotesAdded =   await dbHelper?.addNote(title: titleController.text.toString(), description: descriptionController.text.toString());
                          if(isNotesAdded!){
                            getNotes();
                            Navigator.pop(context);
                            titleController.clear();
                            descriptionController.clear();
                          }
                        }

                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Filled the required fields")));

                      }

                    },
                    child: Text(isUpdate?"Update Note":"Add note"),
                  ),
                ),
                SizedBox(width: 11),
                Expanded(

                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11))),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
