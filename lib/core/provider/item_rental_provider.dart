import 'package:flutter_riverpod/flutter_riverpod.dart';

final itemRentalProvider =
    StateNotifierProvider<ItemRentalNotifier, Map<String, dynamic>>(
        (ref) => ItemRentalNotifier());

class ItemRentalNotifier extends StateNotifier<Map<String, bool>> {
  ItemRentalNotifier() : super({});

  void itemRental(String usageId, bool whetherToRentItem) {
    state = {...state, usageId: whetherToRentItem};
  }

  void deleteItemRentalHistory(String usageId) {
    Map<String, bool> copyState = state;
    copyState.remove(usageId);
  }

  bool getWhetherToRentItem(String usageId) {
    if (state[usageId] == null) return false;
    return state[usageId]!;
  }
}