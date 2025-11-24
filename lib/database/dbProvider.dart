import 'package:flutter/material.dart';
import 'package:flutter_basic/database/data/local/db_helper.dart';

class DBProvider extends ChangeNotifier {
  List<Map<String, dynamic>> _mData = [];
  DBHelper dbHelper;

  DBProvider({required this.dbHelper});

  void addNote(String title, String desc) async {
    bool rowAffected = await dbHelper.addNote(title: title, description: desc);
    if (rowAffected) {
      _mData = await dbHelper.getAllNotes();
      notifyListeners();
    }
  }
  List<Map<String,dynamic>> getNotes() =>_mData;

  void getInitialNotes() async{
    _mData = await dbHelper.getAllNotes();
    notifyListeners();
  }
  void updateNote(String title, String desc,int sno) async {
    bool rowAffected = await dbHelper.updateNote(title: title, description: desc,sno: sno);
    if (rowAffected) {
      _mData = await dbHelper.getAllNotes();
      notifyListeners();
    }
  }
}
