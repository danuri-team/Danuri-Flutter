import 'package:danuri_flutter/data/data_sources/other/item_rental_data_source.dart';
import 'package:danuri_flutter/data/data_sources/other/space_data_source.dart';
import 'package:danuri_flutter/data/models/other/rental_item/request/rental_item_request.dart';
import 'package:danuri_flutter/data/models/other/space/reqeust/register_used_space_request.dart';
import 'package:danuri_flutter/data/models/other/space/response/space_usage_status.dart';

class HomeViewModel {
  final SpaceDataSource _spaceDataSource = SpaceDataSource();
  final ItemRentalDataSource _itemRentalDataSource = ItemRentalDataSource();

  void registerUsedSpace(String spaceId) async {
    await _spaceDataSource.registerUsedSpace(
      RegisterUsedSpaceRequest(spaceId: spaceId),
    );
  }

  void rentalItem(String usageId, String itemId, int quantity) async {
    await _itemRentalDataSource.rentalItem(
      usageId,
      RentalItemRequest(
        itemId: itemId,
        quantity: quantity,
      ),
    );
  }

  Future<List<SpaceUsageStatus>> test() async{
    final response = await _spaceDataSource.getSpaceUsageStatus();
    return response;
  }
}
