// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemResponse {
  String get id;
  String get companyId;
  String get companyName;
  String get name;
  int get totalQuantity;
  int get availableQuantity;
  String get status;

  /// Create a copy of ItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ItemResponseCopyWith<ItemResponse> get copyWith =>
      _$ItemResponseCopyWithImpl<ItemResponse>(
          this as ItemResponse, _$identity);

  /// Serializes this ItemResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ItemResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.totalQuantity, totalQuantity) ||
                other.totalQuantity == totalQuantity) &&
            (identical(other.availableQuantity, availableQuantity) ||
                other.availableQuantity == availableQuantity) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, companyId, companyName, name,
      totalQuantity, availableQuantity, status);

  @override
  String toString() {
    return 'ItemResponse(id: $id, companyId: $companyId, companyName: $companyName, name: $name, totalQuantity: $totalQuantity, availableQuantity: $availableQuantity, status: $status)';
  }
}

/// @nodoc
abstract mixin class $ItemResponseCopyWith<$Res> {
  factory $ItemResponseCopyWith(
          ItemResponse value, $Res Function(ItemResponse) _then) =
      _$ItemResponseCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String companyId,
      String companyName,
      String name,
      int totalQuantity,
      int availableQuantity,
      String status});
}

/// @nodoc
class _$ItemResponseCopyWithImpl<$Res> implements $ItemResponseCopyWith<$Res> {
  _$ItemResponseCopyWithImpl(this._self, this._then);

  final ItemResponse _self;
  final $Res Function(ItemResponse) _then;

  /// Create a copy of ItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? companyId = null,
    Object? companyName = null,
    Object? name = null,
    Object? totalQuantity = null,
    Object? availableQuantity = null,
    Object? status = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _self.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      totalQuantity: null == totalQuantity
          ? _self.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      availableQuantity: null == availableQuantity
          ? _self.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ItemResponse implements ItemResponse {
  _ItemResponse(
      {required this.id,
      required this.companyId,
      required this.companyName,
      required this.name,
      required this.totalQuantity,
      required this.availableQuantity,
      required this.status});
  factory _ItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemResponseFromJson(json);

  @override
  final String id;
  @override
  final String companyId;
  @override
  final String companyName;
  @override
  final String name;
  @override
  final int totalQuantity;
  @override
  final int availableQuantity;
  @override
  final String status;

  /// Create a copy of ItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ItemResponseCopyWith<_ItemResponse> get copyWith =>
      __$ItemResponseCopyWithImpl<_ItemResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ItemResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.totalQuantity, totalQuantity) ||
                other.totalQuantity == totalQuantity) &&
            (identical(other.availableQuantity, availableQuantity) ||
                other.availableQuantity == availableQuantity) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, companyId, companyName, name,
      totalQuantity, availableQuantity, status);

  @override
  String toString() {
    return 'ItemResponse(id: $id, companyId: $companyId, companyName: $companyName, name: $name, totalQuantity: $totalQuantity, availableQuantity: $availableQuantity, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$ItemResponseCopyWith<$Res>
    implements $ItemResponseCopyWith<$Res> {
  factory _$ItemResponseCopyWith(
          _ItemResponse value, $Res Function(_ItemResponse) _then) =
      __$ItemResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String companyId,
      String companyName,
      String name,
      int totalQuantity,
      int availableQuantity,
      String status});
}

/// @nodoc
class __$ItemResponseCopyWithImpl<$Res>
    implements _$ItemResponseCopyWith<$Res> {
  __$ItemResponseCopyWithImpl(this._self, this._then);

  final _ItemResponse _self;
  final $Res Function(_ItemResponse) _then;

  /// Create a copy of ItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? companyId = null,
    Object? companyName = null,
    Object? name = null,
    Object? totalQuantity = null,
    Object? availableQuantity = null,
    Object? status = null,
  }) {
    return _then(_ItemResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _self.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      totalQuantity: null == totalQuantity
          ? _self.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      availableQuantity: null == availableQuantity
          ? _self.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
