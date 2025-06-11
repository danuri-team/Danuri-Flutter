// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AvailableItemResponse {
  List get availableItems;

  /// Create a copy of AvailableItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AvailableItemResponseCopyWith<AvailableItemResponse> get copyWith =>
      _$AvailableItemResponseCopyWithImpl<AvailableItemResponse>(
          this as AvailableItemResponse, _$identity);

  /// Serializes this AvailableItemResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AvailableItemResponse &&
            const DeepCollectionEquality()
                .equals(other.availableItems, availableItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(availableItems));

  @override
  String toString() {
    return 'AvailableItemResponse(availableItems: $availableItems)';
  }
}

/// @nodoc
abstract mixin class $AvailableItemResponseCopyWith<$Res> {
  factory $AvailableItemResponseCopyWith(AvailableItemResponse value,
          $Res Function(AvailableItemResponse) _then) =
      _$AvailableItemResponseCopyWithImpl;
  @useResult
  $Res call({List availableItems});
}

/// @nodoc
class _$AvailableItemResponseCopyWithImpl<$Res>
    implements $AvailableItemResponseCopyWith<$Res> {
  _$AvailableItemResponseCopyWithImpl(this._self, this._then);

  final AvailableItemResponse _self;
  final $Res Function(AvailableItemResponse) _then;

  /// Create a copy of AvailableItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableItems = null,
  }) {
    return _then(_self.copyWith(
      availableItems: null == availableItems
          ? _self.availableItems
          : availableItems // ignore: cast_nullable_to_non_nullable
              as List,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AvailableItemResponse implements AvailableItemResponse {
  _AvailableItemResponse({required final List availableItems})
      : _availableItems = availableItems;
  factory _AvailableItemResponse.fromJson(Map<String, dynamic> json) =>
      _$AvailableItemResponseFromJson(json);

  final List _availableItems;
  @override
  List get availableItems {
    if (_availableItems is EqualUnmodifiableListView) return _availableItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableItems);
  }

  /// Create a copy of AvailableItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AvailableItemResponseCopyWith<_AvailableItemResponse> get copyWith =>
      __$AvailableItemResponseCopyWithImpl<_AvailableItemResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AvailableItemResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AvailableItemResponse &&
            const DeepCollectionEquality()
                .equals(other._availableItems, _availableItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_availableItems));

  @override
  String toString() {
    return 'AvailableItemResponse(availableItems: $availableItems)';
  }
}

/// @nodoc
abstract mixin class _$AvailableItemResponseCopyWith<$Res>
    implements $AvailableItemResponseCopyWith<$Res> {
  factory _$AvailableItemResponseCopyWith(_AvailableItemResponse value,
          $Res Function(_AvailableItemResponse) _then) =
      __$AvailableItemResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List availableItems});
}

/// @nodoc
class __$AvailableItemResponseCopyWithImpl<$Res>
    implements _$AvailableItemResponseCopyWith<$Res> {
  __$AvailableItemResponseCopyWithImpl(this._self, this._then);

  final _AvailableItemResponse _self;
  final $Res Function(_AvailableItemResponse) _then;

  /// Create a copy of AvailableItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? availableItems = null,
  }) {
    return _then(_AvailableItemResponse(
      availableItems: null == availableItems
          ? _self._availableItems
          : availableItems // ignore: cast_nullable_to_non_nullable
              as List,
    ));
  }
}

// dart format on
