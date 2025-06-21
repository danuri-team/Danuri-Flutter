// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rented_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RentedItemResponse {
  String get id; //rentalId
  String get item_id;
  String get item_name;
  int get quantity;
  String get borrowed_at;
  int get returned_quantity;

  /// Create a copy of RentedItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RentedItemResponseCopyWith<RentedItemResponse> get copyWith =>
      _$RentedItemResponseCopyWithImpl<RentedItemResponse>(
          this as RentedItemResponse, _$identity);

  /// Serializes this RentedItemResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RentedItemResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.item_id, item_id) || other.item_id == item_id) &&
            (identical(other.item_name, item_name) ||
                other.item_name == item_name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.borrowed_at, borrowed_at) ||
                other.borrowed_at == borrowed_at) &&
            (identical(other.returned_quantity, returned_quantity) ||
                other.returned_quantity == returned_quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, item_id, item_name, quantity,
      borrowed_at, returned_quantity);

  @override
  String toString() {
    return 'RentedItemResponse(id: $id, item_id: $item_id, item_name: $item_name, quantity: $quantity, borrowed_at: $borrowed_at, returned_quantity: $returned_quantity)';
  }
}

/// @nodoc
abstract mixin class $RentedItemResponseCopyWith<$Res> {
  factory $RentedItemResponseCopyWith(
          RentedItemResponse value, $Res Function(RentedItemResponse) _then) =
      _$RentedItemResponseCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String item_id,
      String item_name,
      int quantity,
      String borrowed_at,
      int returned_quantity});
}

/// @nodoc
class _$RentedItemResponseCopyWithImpl<$Res>
    implements $RentedItemResponseCopyWith<$Res> {
  _$RentedItemResponseCopyWithImpl(this._self, this._then);

  final RentedItemResponse _self;
  final $Res Function(RentedItemResponse) _then;

  /// Create a copy of RentedItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? item_id = null,
    Object? item_name = null,
    Object? quantity = null,
    Object? borrowed_at = null,
    Object? returned_quantity = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      item_id: null == item_id
          ? _self.item_id
          : item_id // ignore: cast_nullable_to_non_nullable
              as String,
      item_name: null == item_name
          ? _self.item_name
          : item_name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      borrowed_at: null == borrowed_at
          ? _self.borrowed_at
          : borrowed_at // ignore: cast_nullable_to_non_nullable
              as String,
      returned_quantity: null == returned_quantity
          ? _self.returned_quantity
          : returned_quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RentedItemResponse implements RentedItemResponse {
  _RentedItemResponse(
      {required this.id,
      required this.item_id,
      required this.item_name,
      required this.quantity,
      required this.borrowed_at,
      required this.returned_quantity});
  factory _RentedItemResponse.fromJson(Map<String, dynamic> json) =>
      _$RentedItemResponseFromJson(json);

  @override
  final String id;
//rentalId
  @override
  final String item_id;
  @override
  final String item_name;
  @override
  final int quantity;
  @override
  final String borrowed_at;
  @override
  final int returned_quantity;

  /// Create a copy of RentedItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RentedItemResponseCopyWith<_RentedItemResponse> get copyWith =>
      __$RentedItemResponseCopyWithImpl<_RentedItemResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RentedItemResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RentedItemResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.item_id, item_id) || other.item_id == item_id) &&
            (identical(other.item_name, item_name) ||
                other.item_name == item_name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.borrowed_at, borrowed_at) ||
                other.borrowed_at == borrowed_at) &&
            (identical(other.returned_quantity, returned_quantity) ||
                other.returned_quantity == returned_quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, item_id, item_name, quantity,
      borrowed_at, returned_quantity);

  @override
  String toString() {
    return 'RentedItemResponse(id: $id, item_id: $item_id, item_name: $item_name, quantity: $quantity, borrowed_at: $borrowed_at, returned_quantity: $returned_quantity)';
  }
}

/// @nodoc
abstract mixin class _$RentedItemResponseCopyWith<$Res>
    implements $RentedItemResponseCopyWith<$Res> {
  factory _$RentedItemResponseCopyWith(
          _RentedItemResponse value, $Res Function(_RentedItemResponse) _then) =
      __$RentedItemResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String item_id,
      String item_name,
      int quantity,
      String borrowed_at,
      int returned_quantity});
}

/// @nodoc
class __$RentedItemResponseCopyWithImpl<$Res>
    implements _$RentedItemResponseCopyWith<$Res> {
  __$RentedItemResponseCopyWithImpl(this._self, this._then);

  final _RentedItemResponse _self;
  final $Res Function(_RentedItemResponse) _then;

  /// Create a copy of RentedItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? item_id = null,
    Object? item_name = null,
    Object? quantity = null,
    Object? borrowed_at = null,
    Object? returned_quantity = null,
  }) {
    return _then(_RentedItemResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      item_id: null == item_id
          ? _self.item_id
          : item_id // ignore: cast_nullable_to_non_nullable
              as String,
      item_name: null == item_name
          ? _self.item_name
          : item_name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      borrowed_at: null == borrowed_at
          ? _self.borrowed_at
          : borrowed_at // ignore: cast_nullable_to_non_nullable
              as String,
      returned_quantity: null == returned_quantity
          ? _self.returned_quantity
          : returned_quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
