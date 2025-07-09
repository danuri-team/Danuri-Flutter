import 'package:danuri_flutter/core/provider/item_id_provider.dart';
import 'package:danuri_flutter/core/provider/rental_id_provider.dart';
import 'package:danuri_flutter/core/provider/space_id_provider.dart';
import 'package:danuri_flutter/data/data_sources/auth/user_auth_data_source.dart';
import 'package:danuri_flutter/data/models/auth/token/response/tokens_response.dart';
import 'package:danuri_flutter/data/data_sources/other/item_rental_data_source.dart';
import 'package:danuri_flutter/data/data_sources/other/space_data_source.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/request/auth_code_login_request.dart';
import 'package:danuri_flutter/data/models/other/rental_item/request/rental_item_request.dart';
import 'package:danuri_flutter/data/models/other/rental_item/request/return_item_request.dart';
import 'package:danuri_flutter/data/models/other/space/reqeust/register_used_space_request.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthCodeViewModel {
  final UserAuthDataSource _userAuthdataSource = UserAuthDataSource();
  final SpaceDataSource _spaceDataSource = SpaceDataSource();
  final ItemRentalDataSource _itemDataSource = ItemRentalDataSource();

  TokensResponse? _token;
  TokensResponse? get token => _token;

  bool? _error;
  bool? get error => _error;

  void reset() {
    _error = false;
  }

  Future<void> authCodeLogin(String phoneNumber, String authCode) async {
    try {
      _token = await _userAuthdataSource.authCodeLogin(
        AuthCodeLoginRequest(
          phone: phoneNumber,
          authCode: authCode,
        ),
      );
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }

  Future<void> exitRoom() async {
    try {
      await _spaceDataSource.exitRoom();
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }

  Future<void> returnItem(String rentalId) async {
    try {
      await _itemDataSource.returnItem(
        rentalId,
        ReturnItemRequest(
          returnedQuantity: 1,
          comment: '정상 반납',
        ),
      );
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }

  Future<void> registerUsedSpace(BuildContext context) async {
    try {
      final String spaceId = context.read<SpaceIdProvider>().spaceId;
      await _spaceDataSource
          .registerUsedSpace(RegisterUsedSpaceRequest(spaceId: spaceId));
      _error = false;
    } on DioException catch (_) {
      _error = true;
      // if (e.response?.statusCode == 409) {
      //   //이미 다른 공간을 사용 중입니다
      // }
    }
  }

  Future<void> itemRental(BuildContext context) async {
    try {
      final String itemId = context.read<ItemIdProvider>().itemId;
      await _spaceDataSource.getUsageSpace().then(
        (usageSpace) async {
          await _itemDataSource
              .itemRental(
            usageSpace.spaceUsageInfo.usageId,
            RentalItemRequest(itemId: itemId, quantity: 1),
          )
              .then(
            (rentedItem) {
              context.read<RentalIdProvider>().addRentalId(rentedItem.id);
            },
          );
        },
      );
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }
}
