import 'package:flutter/material.dart';

class ItemIdProvider extends ChangeNotifier {
  String _itemId = '';
  String get itemId => _itemId;

  void setSpaceId(String id) {
    _itemId = id;
    notifyListeners();
  }
}
