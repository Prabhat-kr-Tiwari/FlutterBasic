import 'package:flutter/material.dart';

class ListMapProvider extends ChangeNotifier {
  List<Map<String, dynamic>> mData = [];

  //events

  void addData(Map<String,dynamic> data) {
    mData.add(data);
    notifyListeners();
  }
  List<Map<String,dynamic>> getData() => mData;
  void updateData(Map<String, dynamic> data,int index){
    mData[index] = data;
    notifyListeners();
  }
  void delete(int index){
    mData.removeAt(index);
    notifyListeners();
  }
}


