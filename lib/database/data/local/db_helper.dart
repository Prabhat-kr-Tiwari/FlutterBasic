import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  //singleton

  //private constructor
  //object cannot be created
  DBHelper._();

  static DBHelper getInstance() {
    return DBHelper._();
  }

  static String TABLE_NOTE = "note";
  static String COLUMN_NOTE_SNO = "s_no";
  static String COLUMN_NOTE_TITLE = "title";
  static String COLUMN_NOTE_DESCRIPTION = "description";

  Database? myDb;

  //open db(if path exist then open else create db)

  Future<Database> getDB() async {
    /*if (myDb != null) {
      return myDb!;
    } else {
      myDb = await openDb();
      return myDb!;
    }*/

    myDb ??= await openDb();
    return myDb!;
  }

  Future<Database> openDb() async {
    Directory applicationDirectory = await getApplicationDocumentsDirectory();
    String dbPath = join(applicationDirectory.path, "noteDb.db");
    return await openDatabase(
      dbPath,
      onCreate: (db, version) {
        //create all your tables
        db.execute(
          "CREATE TABLE $TABLE_NOTE ("
          "$COLUMN_NOTE_SNO INTEGER PRIMARY KEY AUTOINCREMENT, "
          "$COLUMN_NOTE_TITLE TEXT, "
          "$COLUMN_NOTE_DESCRIPTION TEXT"
          ")",
        );
      },
      version: 1,
    );
  }

  //all queries

  //insert
  Future<bool> addNote({
    required String title,
    required String description,
  }) async {
    var db = await getDB();
    int rowAffected = await db.insert(TABLE_NOTE, {
      COLUMN_NOTE_TITLE: title,
      COLUMN_NOTE_DESCRIPTION: description,
    });
    return rowAffected > 0;
  }

  //get all note
  Future<List<Map<String, dynamic>>> getAllNotes() async {
    var db = await getDB();
    //SELECT * FROM note
    List<Map<String, dynamic>> data = await db.query(TABLE_NOTE);
    return data;
  }

  //update note
  Future<bool> updateNote({required String title,required String description, required int sno}) async {
    var db = await getDB();
   int rowAffected = await db.update(TABLE_NOTE, {
      COLUMN_NOTE_TITLE:title,
      COLUMN_NOTE_DESCRIPTION:description
    },where: "$COLUMN_NOTE_SNO = $sno");
   return rowAffected>0;

  }
  //update note
  Future<bool> deleteNote({ required int sno}) async {
    var db = await getDB();
    int rowAffected = await db.delete(TABLE_NOTE,where: "$COLUMN_NOTE_SNO = ?",whereArgs: ['$sno']);
    return rowAffected>0;

  }
}
