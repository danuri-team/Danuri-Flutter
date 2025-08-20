import 'package:danuri_flutter/core/provider/flows/flow_provider.dart';

class LeavingSpaceFlowProvider extends FlowProvider {
  bool _leavingSpaceFlow = false;
  bool get leavingSpaceFlow => _leavingSpaceFlow;

  @override
  void startFlow(){
    _leavingSpaceFlow = true;
    notifyListeners();
  }

  @override
  void cancleFlow(){
    _leavingSpaceFlow = false;
    notifyListeners();
  }

  @override
  void resetFlow(){
    _leavingSpaceFlow = false;
    notifyListeners();
  }
}
