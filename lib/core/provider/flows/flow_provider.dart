import 'package:flutter/material.dart';

abstract class FlowProvider extends ChangeNotifier{
  void startFlow(){}

  void cancleFlow(){}

  void resetFlow(){}
}