// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_items_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemAvailableRental {
  String get id;
  String get name;
  int get available_quantity;

  /// Create a copy of ItemAvailableRental
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ItemAvailableRentalCopyWith<ItemAvailableRental> get copyWith =>
      _$ItemAvailableRentalCopyWithImpl<ItemAvailableRental>(
          this as ItemAvailableRental, _$identity);

  /// Serializes this ItemAvailableRental to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ItemAvailableRental &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.available_quantity, available_quantity) ||
                other.available_quantity == available_quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, available_quantity);

  @override
  String toString() {
    return 'ItemAvailableRental(id: $id, name: $name, available_quantity: $available_quantity)';
  }
}

/// @nodoc
abstract mixin class $ItemAvailableRentalCopyWith<$Res> {
  factory $ItemAvailableRentalCopyWith(
          ItemAvailableRental value, $Res Function(ItemAvailableRental) _then) =
      _$ItemAvailableRentalCopyWithImpl;
  @useResult
  $Res call({String id, String name, int available_quantity});
}

/// @nodoc
class _$ItemAvailableRentalCopyWithImpl<$Res>
    implements $ItemAvailableRentalCopyWith<$Res> {
  _$ItemAvailableRentalCopyWithImpl(this._self, this._then);

  final ItemAvailableRental _self;
  final $Res Function(ItemAvailableRental) _then;

  /// Create a copy of ItemAvailableRental
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? available_quantity = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      available_quantity: null == available_quantity
          ? _self.available_quantity
          : available_quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ItemAvailableRental implements ItemAvailableRental {
  _ItemAvailableRental(
      {required this.id, required this.name, required this.available_quantity});
  factory _ItemAvailableRental.fromJson(Map<String, dynamic> json) =>
      _$ItemAvailableRentalFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int available_quantity;

  /// Create a copy of ItemAvailableRental
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ItemAvailableRentalCopyWith<_ItemAvailableRental> get copyWith =>
      __$ItemAvailableRentalCopyWithImpl<_ItemAvailableRental>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ItemAvailableRentalToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemAvailableRental &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.available_quantity, available_quantity) ||
                other.available_quantity == available_quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, available_quantity);

  @override
  String toString() {
    return 'ItemAvailableRental(id: $id, name: $name, available_quantity: $available_quantity)';
  }
}

/// @nodoc
abstract mixin class _$ItemAvailableRentalCopyWith<$Res>
    implements $ItemAvailableRentalCopyWith<$Res> {
  factory _$ItemAvailableRentalCopyWith(_ItemAvailableRental value,
          $Res Function(_ItemAvailableRental) _then) =
      __$ItemAvailableRentalCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String name, int available_quantity});
}

/// @nodoc
class __$ItemAvailableRentalCopyWithImpl<$Res>
    implements _$ItemAvailableRentalCopyWith<$Res> {
  __$ItemAvailableRentalCopyWithImpl(this._self, this._then);

  final _ItemAvailableRental _self;
  final $Res Function(_ItemAvailableRental) _then;

  /// Create a copy of ItemAvailableRental
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? available_quantity = null,
  }) {
    return _then(_ItemAvailableRental(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      available_quantity: null == available_quantity
          ? _self.available_quantity
          : available_quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
