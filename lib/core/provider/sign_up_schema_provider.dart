import 'package:flutter_riverpod/flutter_riverpod.dart';

final requestSignUpFormProvider =
    StateNotifierProvider<RequestSignUpFormNotifier, Map<String, dynamic>>(
  (ref) => RequestSignUpFormNotifier(),
);

class RequestSignUpFormNotifier extends StateNotifier<Map<String, dynamic>> {
  RequestSignUpFormNotifier() : super({});

  void addField({required String key, required dynamic value}) {
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
