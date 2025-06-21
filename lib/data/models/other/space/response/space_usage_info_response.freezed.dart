// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'space_usage_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpaceUsageInfoResponse {
  String get spaceId;
  String get usageId;
  String get spaceName;
  List<ItemAvailableRental> get rentalItem;
  String get startAt;
  String get endAt;

  /// Create a copy of SpaceUsageInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpaceUsageInfoResponseCopyWith<SpaceUsageInfoResponse> get copyWith =>
      _$SpaceUsageInfoResponseCopyWithImpl<SpaceUsageInfoResponse>(
          this as SpaceUsageInfoResponse, _$identity);

  /// Serializes this SpaceUsageInfoResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpaceUsageInfoResponse &&
            (identical(other.spaceId, spaceId) || other.spaceId == spaceId) &&
            (identical(other.usageId, usageId) || other.usageId == usageId) &&
            (identical(other.spaceName, spaceName) ||
                other.spaceName == spaceName) &&
            const DeepCollectionEquality()
                .equals(other.rentalItem, rentalItem) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, spaceId, usageId, spaceName,
      const DeepCollectionEquality().hash(rentalItem), startAt, endAt);

  @override
  String toString() {
    return 'SpaceUsageInfoResponse(spaceId: $spaceId, usageId: $usageId, spaceName: $spaceName, rentalItem: $rentalItem, startAt: $startAt, endAt: $endAt)';
  }
}

/// @nodoc
abstract mixin class $SpaceUsageInfoResponseCopyWith<$Res> {
  factory $SpaceUsageInfoResponseCopyWith(SpaceUsageInfoResponse value,
          $Res Function(SpaceUsageInfoResponse) _then) =
      _$SpaceUsageInfoResponseCopyWithImpl;
  @useResult
  $Res call(
      {String spaceId,
      String usageId,
      String spaceName,
      List<ItemAvailableRental> rentalItem,
      String startAt,
      String endAt});
}

/// @nodoc
class _$SpaceUsageInfoResponseCopyWithImpl<$Res>
    implements $SpaceUsageInfoResponseCopyWith<$Res> {
  _$SpaceUsageInfoResponseCopyWithImpl(this._self, this._then);

  final SpaceUsageInfoResponse _self;
  final $Res Function(SpaceUsageInfoResponse) _then;

  /// Create a copy of SpaceUsageInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spaceId = null,
    Object? usageId = null,
    Object? spaceName = null,
    Object? rentalItem = null,
    Object? startAt = null,
    Object? endAt = null,
  }) {
    return _then(_self.copyWith(
      spaceId: null == spaceId
          ? _self.spaceId
          : spaceId // ignore: cast_nullable_to_non_nullable
              as String,
      usageId: null == usageId
          ? _self.usageId
          : usageId // ignore: cast_nullable_to_non_nullable
              as String,
      spaceName: null == spaceName
          ? _self.spaceName
          : spaceName // ignore: cast_nullable_to_non_nullable
              as String,
      rentalItem: null == rentalItem
          ? _self.rentalItem
          : rentalItem // ignore: cast_nullable_to_non_nullable
              as List<ItemAvailableRental>,
      startAt: null == startAt
          ? _self.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as String,
      endAt: null == endAt
          ? _self.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SpaceUsageInfoResponse implements SpaceUsageInfoResponse {
  _SpaceUsageInfoResponse(
      {required this.spaceId,
      required this.usageId,
      required this.spaceName,
      required final List<ItemAvailableRental> rentalItem,
      required this.startAt,
      required this.endAt})
      : _rentalItem = rentalItem;
  factory _SpaceUsageInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$SpaceUsageInfoResponseFromJson(json);

  @override
  final String spaceId;
  @override
  final String usageId;
  @override
  final String spaceName;
  final List<ItemAvailableRental> _rentalItem;
  @override
  List<ItemAvailableRental> get rentalItem {
    if (_rentalItem is EqualUnmodifiableListView) return _rentalItem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rentalItem);
  }

  @override
  final String startAt;
  @override
  final String endAt;

  /// Create a copy of SpaceUsageInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpaceUsageInfoResponseCopyWith<_SpaceUsageInfoResponse> get copyWith =>
      __$SpaceUsageInfoResponseCopyWithImpl<_SpaceUsageInfoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SpaceUsageInfoResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpaceUsageInfoResponse &&
            (identical(other.spaceId, spaceId) || other.spaceId == spaceId) &&
            (identical(other.usageId, usageId) || other.usageId == usageId) &&
            (identical(other.spaceName, spaceName) ||
                other.spaceName == spaceName) &&
            const DeepCollectionEquality()
                .equals(other._rentalItem, _rentalItem) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, spaceId, usageId, spaceName,
      const DeepCollectionEquality().hash(_rentalItem), startAt, endAt);

  @override
  String toString() {
    return 'SpaceUsageInfoResponse(spaceId: $spaceId, usageId: $usageId, spaceName: $spaceName, rentalItem: $rentalItem, startAt: $startAt, endAt: $endAt)';
  }
}

/// @nodoc
abstract mixin class _$SpaceUsageInfoResponseCopyWith<$Res>
    implements $SpaceUsageInfoResponseCopyWith<$Res> {
  factory _$SpaceUsageInfoResponseCopyWith(_SpaceUsageInfoResponse value,
          $Res Function(_SpaceUsageInfoResponse) _then) =
      __$SpaceUsageInfoResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String spaceId,
      String usageId,
      String spaceName,
      List<ItemAvailableRental> rentalItem,
      String startAt,
      String endAt});
}

/// @nodoc
class __$SpaceUsageInfoResponseCopyWithImpl<$Res>
    implements _$SpaceUsageInfoResponseCopyWith<$Res> {
  __$SpaceUsageInfoResponseCopyWithImpl(this._self, this._then);

  final _SpaceUsageInfoResponse _self;
  final $Res Function(_SpaceUsageInfoResponse) _then;

  /// Create a copy of SpaceUsageInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? spaceId = null,
    Object? usageId = null,
    Object? spaceName = null,
    Object? rentalItem = null,
    Object? startAt = null,
    Object? endAt = null,
  }) {
    return _then(_SpaceUsageInfoResponse(
      spaceId: null == spaceId
          ? _self.spaceId
          : spaceId // ignore: cast_nullable_to_non_nullable
              as String,
      usageId: null == usageId
          ? _self.usageId
          : usageId // ignore: cast_nullable_to_non_nullable
              as String,
      spaceName: null == spaceName
          ? _self.spaceName
          : spaceName // ignore: cast_nullable_to_non_nullable
              as String,
      rentalItem: null == rentalItem
          ? _self._rentalItem
          : rentalItem // ignore: cast_nullable_to_non_nullable
              as List<ItemAvailableRental>,
      startAt: null == startAt
          ? _self.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as String,
      endAt: null == endAt
          ? _self.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
