import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/database/data/local/db_helper.dart';
import 'package:flutter_basic/database/dbProvider.dart';
import 'package:provider/provider.dart';

class AddNotePage extends StatelessWidget{

  bool isUpdate;
  String title;
  String description;
  int sno;
  TextEditingController titleController =  TextEditingController();
  TextEditingController descriptionController =  TextEditingController();
  AddNotePage({this.isUpdate=false,this.sno=0,this.title="",this.description=""});
  @override
  Widget build(BuildContext context) {
    if(isUpdate){
      titleController.text=title;
      descriptionController.text=description;
    }
    return Scaffold(
      appBar: AppBar(title: Text(      isUpdate?"Update Note":"Add note" ),),
      body: Container(

        // padding: EdgeInsets.only(left: 11,right: 11,top: 11,bottom: MediaQuery.of(context).viewInsets.bottom),
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
                            context.read<DBProvider>().updateNote(title, description, sno);

                          }else{
                            context.read<DBProvider>().addNote(title, description);
                          }
                          Navigator.pop(context);

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
      ),
    );
  }

}

