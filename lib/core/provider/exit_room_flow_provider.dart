import 'package:danuri_flutter/core/provider/flow_provider.dart';

class ExitRoomFlowProvider extends FlowProvider {
  bool _exitRoomFlow = false;
  bool get exitRoomFlow => _exitRoomFlow;

  @override
  void startFlow(){
    _exitRoomFlow = true;
    notifyListeners();
  }

  @override
  void cancleFlow(){
    _exitRoomFlow = false;
    notifyListeners();
  }

  @override
  void resetFlow(){
    _exitRoomFlow = false;
    notifyListeners();
  }
}
