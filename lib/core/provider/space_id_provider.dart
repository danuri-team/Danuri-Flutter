import 'package:flutter/material.dart';

class SpaceIdProvider extends ChangeNotifier{
  String _spaceId = '';
  String get spaceId => _spaceId;

  void setSpaceId(String id){
    _spaceId = id;
    notifyListeners();
  }
}