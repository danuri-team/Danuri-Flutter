import 'package:flutter/material.dart';

class ExitRoomFlowProvider extends ChangeNotifier {
  bool _exitRoomFlow = false;
  bool get exitRoomFlow => _exitRoomFlow;

  void startExitRoomFlow(){
    _exitRoomFlow = true;
    notifyListeners();
  }

  void cancleExitRoomFlow(){
    _exitRoomFlow = false;
    notifyListeners();
  }
}
