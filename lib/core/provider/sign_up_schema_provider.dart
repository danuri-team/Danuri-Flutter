import 'package:flutter_riverpod/flutter_riverpod.dart';

final signUpSchemaProvider =
    StateNotifierProvider<SignUpSchemaNotifier, Map<String, dynamic>>(
  (ref) => SignUpSchemaNotifier(),
);

class SignUpSchemaNotifier extends StateNotifier<Map<String, dynamic>> {
  SignUpSchemaNotifier() : super({});

  void addSchema({required String key, required dynamic value}) {
    if (value == null) {
      state = {
        ...state,
        key: null,
      };
    } else {
      state = {
        ...state,
        key: value,
      };
    }
  }

  void resetSchema() {
    state = {};
  }
}
