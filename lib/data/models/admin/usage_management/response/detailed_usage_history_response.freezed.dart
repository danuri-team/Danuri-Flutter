// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_usage_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DetailedUsageHistoryResponse {
  String get id;
  String get userId;
  String get userName;
  String get userPhone;
  String get spaceId;
  String get spaceName;
  String get companyId;
  String get companyName;
  String get startAt;
  String get endAt;
  int get rentalCount;

  /// Create a copy of DetailedUsageHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DetailedUsageHistoryResponseCopyWith<DetailedUsageHistoryResponse>
      get copyWith => _$DetailedUsageHistoryResponseCopyWithImpl<
              DetailedUsageHistoryResponse>(
          this as DetailedUsageHistoryResponse, _$identity);

  /// Serializes this DetailedUsageHistoryResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DetailedUsageHistoryResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userPhone, userPhone) ||
                other.userPhone == userPhone) &&
            (identical(other.spaceId, spaceId) || other.spaceId == spaceId) &&
            (identical(other.spaceName, spaceName) ||
                other.spaceName == spaceName) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.rentalCount, rentalCount) ||
                other.rentalCount == rentalCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, userName, userPhone,
      spaceId, spaceName, companyId, companyName, startAt, endAt, rentalCount);

  @override
  String toString() {
    return 'DetailedUsageHistoryResponse(id: $id, userId: $userId, userName: $userName, userPhone: $userPhone, spaceId: $spaceId, spaceName: $spaceName, companyId: $companyId, companyName: $companyName, startAt: $startAt, endAt: $endAt, rentalCount: $rentalCount)';
  }
}

/// @nodoc
abstract mixin class $DetailedUsageHistoryResponseCopyWith<$Res> {
  factory $DetailedUsageHistoryResponseCopyWith(
          DetailedUsageHistoryResponse value,
          $Res Function(DetailedUsageHistoryResponse) _then) =
      _$DetailedUsageHistoryResponseCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String userId,
      String userName,
      String userPhone,
      String spaceId,
      String spaceName,
      String companyId,
      String companyName,
      String startAt,
      String endAt,
      int rentalCount});
}

/// @nodoc
class _$DetailedUsageHistoryResponseCopyWithImpl<$Res>
    implements $DetailedUsageHistoryResponseCopyWith<$Res> {
  _$DetailedUsageHistoryResponseCopyWithImpl(this._self, this._then);

  final DetailedUsageHistoryResponse _self;
  final $Res Function(DetailedUsageHistoryResponse) _then;

  /// Create a copy of DetailedUsageHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? userName = null,
    Object? userPhone = null,
    Object? spaceId = null,
    Object? spaceName = null,
    Object? companyId = null,
    Object? companyName = null,
    Object? startAt = null,
    Object? endAt = null,
    Object? rentalCount = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _self.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userPhone: null == userPhone
          ? _self.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String,
      spaceId: null == spaceId
          ? _self.spaceId
          : spaceId // ignore: cast_nullable_to_non_nullable
              as String,
      spaceName: null == spaceName
          ? _self.spaceName
          : spaceName // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _self.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      startAt: null == startAt
          ? _self.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as String,
      endAt: null == endAt
          ? _self.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as String,
      rentalCount: null == rentalCount
          ? _self.rentalCount
          : rentalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DetailedUsageHistoryResponse implements DetailedUsageHistoryResponse {
  _DetailedUsageHistoryResponse(
      {required this.id,
      required this.userId,
      required this.userName,
      required this.userPhone,
      required this.spaceId,
      required this.spaceName,
      required this.companyId,
      required this.companyName,
      required this.startAt,
      required this.endAt,
      required this.rentalCount});
  factory _DetailedUsageHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailedUsageHistoryResponseFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final String userPhone;
  @override
  final String spaceId;
  @override
  final String spaceName;
  @override
  final String companyId;
  @override
  final String companyName;
  @override
  final String startAt;
  @override
  final String endAt;
  @override
  final int rentalCount;

  /// Create a copy of DetailedUsageHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DetailedUsageHistoryResponseCopyWith<_DetailedUsageHistoryResponse>
      get copyWith => __$DetailedUsageHistoryResponseCopyWithImpl<
          _DetailedUsageHistoryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DetailedUsageHistoryResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DetailedUsageHistoryResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userPhone, userPhone) ||
                other.userPhone == userPhone) &&
            (identical(other.spaceId, spaceId) || other.spaceId == spaceId) &&
            (identical(other.spaceName, spaceName) ||
                other.spaceName == spaceName) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.rentalCount, rentalCount) ||
                other.rentalCount == rentalCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, userName, userPhone,
      spaceId, spaceName, companyId, companyName, startAt, endAt, rentalCount);

  @override
  String toString() {
    return 'DetailedUsageHistoryResponse(id: $id, userId: $userId, userName: $userName, userPhone: $userPhone, spaceId: $spaceId, spaceName: $spaceName, companyId: $companyId, companyName: $companyName, startAt: $startAt, endAt: $endAt, rentalCount: $rentalCount)';
  }
}

/// @nodoc
abstract mixin class _$DetailedUsageHistoryResponseCopyWith<$Res>
    implements $DetailedUsageHistoryResponseCopyWith<$Res> {
  factory _$DetailedUsageHistoryResponseCopyWith(
          _DetailedUsageHistoryResponse value,
          $Res Function(_DetailedUsageHistoryResponse) _then) =
      __$DetailedUsageHistoryResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String userName,
      String userPhone,
      String spaceId,
      String spaceName,
      String companyId,
      String companyName,
      String startAt,
      String endAt,
      int rentalCount});
}

/// @nodoc
class __$DetailedUsageHistoryResponseCopyWithImpl<$Res>
    implements _$DetailedUsageHistoryResponseCopyWith<$Res> {
  __$DetailedUsageHistoryResponseCopyWithImpl(this._self, this._then);

  final _DetailedUsageHistoryResponse _self;
  final $Res Function(_DetailedUsageHistoryResponse) _then;

  /// Create a copy of DetailedUsageHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? userName = null,
    Object? userPhone = null,
    Object? spaceId = null,
    Object? spaceName = null,
    Object? companyId = null,
    Object? companyName = null,
    Object? startAt = null,
    Object? endAt = null,
    Object? rentalCount = null,
  }) {
    return _then(_DetailedUsageHistoryResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _self.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userPhone: null == userPhone
          ? _self.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String,
      spaceId: null == spaceId
          ? _self.spaceId
          : spaceId // ignore: cast_nullable_to_non_nullable
              as String,
      spaceName: null == spaceName
          ? _self.spaceName
          : spaceName // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _self.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      startAt: null == startAt
          ? _self.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as String,
      endAt: null == endAt
          ? _self.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as String,
      rentalCount: null == rentalCount
          ? _self.rentalCount
          : rentalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
