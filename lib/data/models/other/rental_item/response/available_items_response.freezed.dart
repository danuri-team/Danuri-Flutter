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
mixin _$AvailableItemsResponse {
  List<AvailableItem> get availableItems;

  /// Create a copy of AvailableItemsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AvailableItemsResponseCopyWith<AvailableItemsResponse> get copyWith =>
      _$AvailableItemsResponseCopyWithImpl<AvailableItemsResponse>(
          this as AvailableItemsResponse, _$identity);

  /// Serializes this AvailableItemsResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AvailableItemsResponse &&
            const DeepCollectionEquality()
                .equals(other.availableItems, availableItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(availableItems));

  @override
  String toString() {
    return 'AvailableItemsResponse(availableItems: $availableItems)';
  }
}

/// @nodoc
abstract mixin class $AvailableItemsResponseCopyWith<$Res> {
  factory $AvailableItemsResponseCopyWith(AvailableItemsResponse value,
          $Res Function(AvailableItemsResponse) _then) =
      _$AvailableItemsResponseCopyWithImpl;
  @useResult
  $Res call({List<AvailableItem> availableItems});
}

/// @nodoc
class _$AvailableItemsResponseCopyWithImpl<$Res>
    implements $AvailableItemsResponseCopyWith<$Res> {
  _$AvailableItemsResponseCopyWithImpl(this._self, this._then);

  final AvailableItemsResponse _self;
  final $Res Function(AvailableItemsResponse) _then;

  /// Create a copy of AvailableItemsResponse
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
              as List<AvailableItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AvailableItemsResponse implements AvailableItemsResponse {
  _AvailableItemsResponse({required final List<AvailableItem> availableItems})
      : _availableItems = availableItems;
  factory _AvailableItemsResponse.fromJson(Map<String, dynamic> json) =>
      _$AvailableItemsResponseFromJson(json);

  final List<AvailableItem> _availableItems;
  @override
  List<AvailableItem> get availableItems {
    if (_availableItems is EqualUnmodifiableListView) return _availableItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableItems);
  }

  /// Create a copy of AvailableItemsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AvailableItemsResponseCopyWith<_AvailableItemsResponse> get copyWith =>
      __$AvailableItemsResponseCopyWithImpl<_AvailableItemsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AvailableItemsResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AvailableItemsResponse &&
            const DeepCollectionEquality()
                .equals(other._availableItems, _availableItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_availableItems));

  @override
  String toString() {
    return 'AvailableItemsResponse(availableItems: $availableItems)';
  }
}

/// @nodoc
abstract mixin class _$AvailableItemsResponseCopyWith<$Res>
    implements $AvailableItemsResponseCopyWith<$Res> {
  factory _$AvailableItemsResponseCopyWith(_AvailableItemsResponse value,
          $Res Function(_AvailableItemsResponse) _then) =
      __$AvailableItemsResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<AvailableItem> availableItems});
}

/// @nodoc
class __$AvailableItemsResponseCopyWithImpl<$Res>
    implements _$AvailableItemsResponseCopyWith<$Res> {
  __$AvailableItemsResponseCopyWithImpl(this._self, this._then);

  final _AvailableItemsResponse _self;
  final $Res Function(_AvailableItemsResponse) _then;

  /// Create a copy of AvailableItemsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? availableItems = null,
  }) {
    return _then(_AvailableItemsResponse(
      availableItems: null == availableItems
          ? _self._availableItems
          : availableItems // ignore: cast_nullable_to_non_nullable
              as List<AvailableItem>,
    ));
  }
}

// dart format on
