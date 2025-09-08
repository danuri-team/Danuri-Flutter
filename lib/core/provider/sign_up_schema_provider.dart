import 'package:flutter_riverpod/flutter_riverpod.dart';

final signUpSchemaProvider =
    StateNotifierProvider<SignUpSchemaNotifier, Map<String, dynamic>>(
  (ref) => SignUpSchemaNotifier(),
);

class SignUpSchemaNotifier extends StateNotifier<Map<String, dynamic>> {
  SignUpSchemaNotifier() : super({});

  void addSchema({required String key, required dynamic value}){
    state = {
      ...state,
      key: value,
    };
  }
}
