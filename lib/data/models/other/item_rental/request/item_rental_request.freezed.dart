// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_rental_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemRentalRequest {
  String get itemId;
  int get quantity;

  /// Create a copy of ItemRentalRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ItemRentalRequestCopyWith<ItemRentalRequest> get copyWith =>
      _$ItemRentalRequestCopyWithImpl<ItemRentalRequest>(
          this as ItemRentalRequest, _$identity);

  /// Serializes this ItemRentalRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ItemRentalRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemId, quantity);

  @override
  String toString() {
    return 'ItemRentalRequest(itemId: $itemId, quantity: $quantity)';
  }
}

/// @nodoc
abstract mixin class $ItemRentalRequestCopyWith<$Res> {
  factory $ItemRentalRequestCopyWith(
          ItemRentalRequest value, $Res Function(ItemRentalRequest) _then) =
      _$ItemRentalRequestCopyWithImpl;
  @useResult
  $Res call({String itemId, int quantity});
}

/// @nodoc
class _$ItemRentalRequestCopyWithImpl<$Res>
    implements $ItemRentalRequestCopyWith<$Res> {
  _$ItemRentalRequestCopyWithImpl(this._self, this._then);

  final ItemRentalRequest _self;
  final $Res Function(ItemRentalRequest) _then;

  /// Create a copy of ItemRentalRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? quantity = null,
  }) {
    return _then(_self.copyWith(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ItemRentalRequest implements ItemRentalRequest {
  _ItemRentalRequest({required this.itemId, required this.quantity});
  factory _ItemRentalRequest.fromJson(Map<String, dynamic> json) =>
      _$ItemRentalRequestFromJson(json);

  @override
  final String itemId;
  @override
  final int quantity;

  /// Create a copy of ItemRentalRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ItemRentalRequestCopyWith<_ItemRentalRequest> get copyWith =>
      __$ItemRentalRequestCopyWithImpl<_ItemRentalRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ItemRentalRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemRentalRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemId, quantity);

  @override
  String toString() {
    return 'ItemRentalRequest(itemId: $itemId, quantity: $quantity)';
  }
}

/// @nodoc
abstract mixin class _$ItemRentalRequestCopyWith<$Res>
    implements $ItemRentalRequestCopyWith<$Res> {
  factory _$ItemRentalRequestCopyWith(
          _ItemRentalRequest value, $Res Function(_ItemRentalRequest) _then) =
      __$ItemRentalRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String itemId, int quantity});
}

/// @nodoc
class __$ItemRentalRequestCopyWithImpl<$Res>
    implements _$ItemRentalRequestCopyWith<$Res> {
  __$ItemRentalRequestCopyWithImpl(this._self, this._then);

  final _ItemRentalRequest _self;
  final $Res Function(_ItemRentalRequest) _then;

  /// Create a copy of ItemRentalRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? itemId = null,
    Object? quantity = null,
  }) {
    return _then(_ItemRentalRequest(
      itemId: null == itemId
          ? _self.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
