import 'package:flutter/material.dart';

class RentalIdProvider extends ChangeNotifier{
  List<String> _rentalIds = [];
  List<String> get rentalIds => _rentalIds;

  void addRentalId(String rentalId){
    _rentalIds.add(rentalId);
    notifyListeners();
  }
}