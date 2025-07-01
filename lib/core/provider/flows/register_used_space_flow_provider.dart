import 'package:danuri_flutter/core/provider/flows/flow_provider.dart';

class RegisterUsedSpaceFlowProvider extends FlowProvider{
  bool _registerUsedSpaceFlow = false;
  bool get registerUsedSpaceFlow => _registerUsedSpaceFlow;

  @override
  void startFlow(){
    _registerUsedSpaceFlow = true;
    notifyListeners();
  }

  @override
  void cancleFlow(){
    _registerUsedSpaceFlow = false;
    notifyListeners();
  }

  @override
  void resetFlow(){
    _registerUsedSpaceFlow = false;
    notifyListeners();
  }
}