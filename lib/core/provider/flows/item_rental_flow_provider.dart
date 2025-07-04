import 'package:danuri_flutter/core/provider/flows/flow_provider.dart';

class ItemRentalFlowProvider extends FlowProvider{
  bool _itemRentalFlow = false;
  bool get itemRentalFlow => _itemRentalFlow;

  @override
  void startFlow(){
    _itemRentalFlow = true;
    notifyListeners();
  }

  @override
  void cancleFlow(){
    _itemRentalFlow = false;
    notifyListeners();
  }

  @override
  void resetFlow(){
    _itemRentalFlow = false;
    notifyListeners();
  }
}