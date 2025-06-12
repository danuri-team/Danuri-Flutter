// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AvailableItem {
  String get id;
  String get name;
  int get availableQuantity;

  /// Create a copy of AvailableItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AvailableItemCopyWith<AvailableItem> get copyWith =>
      _$AvailableItemCopyWithImpl<AvailableItem>(
          this as AvailableItem, _$identity);

  /// Serializes this AvailableItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AvailableItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.availableQuantity, availableQuantity) ||
                other.availableQuantity == availableQuantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, availableQuantity);

  @override
  String toString() {
    return 'AvailableItem(id: $id, name: $name, availableQuantity: $availableQuantity)';
  }
}

/// @nodoc
abstract mixin class $AvailableItemCopyWith<$Res> {
  factory $AvailableItemCopyWith(
          AvailableItem value, $Res Function(AvailableItem) _then) =
      _$AvailableItemCopyWithImpl;
  @useResult
  $Res call({String id, String name, int availableQuantity});
}

/// @nodoc
class _$AvailableItemCopyWithImpl<$Res>
    implements $AvailableItemCopyWith<$Res> {
  _$AvailableItemCopyWithImpl(this._self, this._then);

  final AvailableItem _self;
  final $Res Function(AvailableItem) _then;

  /// Create a copy of AvailableItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? availableQuantity = null,
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
      availableQuantity: null == availableQuantity
          ? _self.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AvailableItem implements AvailableItem {
  _AvailableItem(
      {required this.id, required this.name, required this.availableQuantity});
  factory _AvailableItem.fromJson(Map<String, dynamic> json) =>
      _$AvailableItemFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int availableQuantity;

  /// Create a copy of AvailableItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AvailableItemCopyWith<_AvailableItem> get copyWith =>
      __$AvailableItemCopyWithImpl<_AvailableItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AvailableItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AvailableItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.availableQuantity, availableQuantity) ||
                other.availableQuantity == availableQuantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, availableQuantity);

  @override
  String toString() {
    return 'AvailableItem(id: $id, name: $name, availableQuantity: $availableQuantity)';
  }
}

/// @nodoc
abstract mixin class _$AvailableItemCopyWith<$Res>
    implements $AvailableItemCopyWith<$Res> {
  factory _$AvailableItemCopyWith(
          _AvailableItem value, $Res Function(_AvailableItem) _then) =
      __$AvailableItemCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String name, int availableQuantity});
}

/// @nodoc
class __$AvailableItemCopyWithImpl<$Res>
    implements _$AvailableItemCopyWith<$Res> {
  __$AvailableItemCopyWithImpl(this._self, this._then);

  final _AvailableItem _self;
  final $Res Function(_AvailableItem) _then;

  /// Create a copy of AvailableItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? availableQuantity = null,
  }) {
    return _then(_AvailableItem(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      availableQuantity: null == availableQuantity
          ? _self.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
