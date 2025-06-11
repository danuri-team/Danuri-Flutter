// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_admin_account_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AllAdminAccountResponse _$AllAdminAccountResponseFromJson(
        Map<String, dynamic> json) =>
    _AllAdminAccountResponse(
      allAdminAccounts: (json['allAdminAccounts'] as List<dynamic>)
          .map((e) => MyInfoResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllAdminAccountResponseToJson(
        _AllAdminAccountResponse instance) =>
    <String, dynamic>{
      'allAdminAccounts': instance.allAdminAccounts,
    };
