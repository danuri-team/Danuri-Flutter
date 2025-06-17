// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rental_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RentalItemRequest {
  String get itemId;
  int get quantity;

  /// Create a copy of RentalItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RentalItemRequestCopyWith<RentalItemRequest> get copyWith =>
      _$RentalItemRequestCopyWithImpl<RentalItemRequest>(
          this as RentalItemRequest, _$identity);

  /// Serializes this RentalItemRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RentalItemRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemId, quantity);

  @override
  String toString() {
    return 'RentalItemRequest(itemId: $itemId, quantity: $quantity)';
  }
}

/// @nodoc
abstract mixin class $RentalItemRequestCopyWith<$Res> {
  factory $RentalItemRequestCopyWith(
          RentalItemRequest value, $Res Function(RentalItemRequest) _then) =
      _$RentalItemRequestCopyWithImpl;
  @useResult
  $Res call({String itemId, int quantity});
}

/// @nodoc
class _$RentalItemRequestCopyWithImpl<$Res>
    implements $RentalItemRequestCopyWith<$Res> {
  _$RentalItemRequestCopyWithImpl(this._self, this._then);

  final RentalItemRequest _self;
  final $Res Function(RentalItemRequest) _then;

  /// Create a copy of RentalItemRequest
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
class _RentalItemRequest implements RentalItemRequest {
  _RentalItemRequest({required this.itemId, required this.quantity});
  factory _RentalItemRequest.fromJson(Map<String, dynamic> json) =>
      _$RentalItemRequestFromJson(json);

  @override
  final String itemId;
  @override
  final int quantity;

  /// Create a copy of RentalItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RentalItemRequestCopyWith<_RentalItemRequest> get copyWith =>
      __$RentalItemRequestCopyWithImpl<_RentalItemRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RentalItemRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RentalItemRequest &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemId, quantity);

  @override
  String toString() {
    return 'RentalItemRequest(itemId: $itemId, quantity: $quantity)';
  }
}

/// @nodoc
abstract mixin class _$RentalItemRequestCopyWith<$Res>
    implements $RentalItemRequestCopyWith<$Res> {
  factory _$RentalItemRequestCopyWith(
          _RentalItemRequest value, $Res Function(_RentalItemRequest) _then) =
      __$RentalItemRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String itemId, int quantity});
}

/// @nodoc
class __$RentalItemRequestCopyWithImpl<$Res>
    implements _$RentalItemRequestCopyWith<$Res> {
  __$RentalItemRequestCopyWithImpl(this._self, this._then);

  final _RentalItemRequest _self;
  final $Res Function(_RentalItemRequest) _then;

  /// Create a copy of RentalItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? itemId = null,
    Object? quantity = null,
  }) {
    return _then(_RentalItemRequest(
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
