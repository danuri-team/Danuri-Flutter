// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Internal_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InternalItemResponse {
  List<ItemResponse> get internalItems;

  /// Create a copy of InternalItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InternalItemResponseCopyWith<InternalItemResponse> get copyWith =>
      _$InternalItemResponseCopyWithImpl<InternalItemResponse>(
          this as InternalItemResponse, _$identity);

  /// Serializes this InternalItemResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InternalItemResponse &&
            const DeepCollectionEquality()
                .equals(other.internalItems, internalItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(internalItems));

  @override
  String toString() {
    return 'InternalItemResponse(internalItems: $internalItems)';
  }
}

/// @nodoc
abstract mixin class $InternalItemResponseCopyWith<$Res> {
  factory $InternalItemResponseCopyWith(InternalItemResponse value,
          $Res Function(InternalItemResponse) _then) =
      _$InternalItemResponseCopyWithImpl;
  @useResult
  $Res call({List<ItemResponse> internalItems});
}

/// @nodoc
class _$InternalItemResponseCopyWithImpl<$Res>
    implements $InternalItemResponseCopyWith<$Res> {
  _$InternalItemResponseCopyWithImpl(this._self, this._then);

  final InternalItemResponse _self;
  final $Res Function(InternalItemResponse) _then;

  /// Create a copy of InternalItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? internalItems = null,
  }) {
    return _then(_self.copyWith(
      internalItems: null == internalItems
          ? _self.internalItems
          : internalItems // ignore: cast_nullable_to_non_nullable
              as List<ItemResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _InternalItemResponse implements InternalItemResponse {
  _InternalItemResponse({required final List<ItemResponse> internalItems})
      : _internalItems = internalItems;
  factory _InternalItemResponse.fromJson(Map<String, dynamic> json) =>
      _$InternalItemResponseFromJson(json);

  final List<ItemResponse> _internalItems;
  @override
  List<ItemResponse> get internalItems {
    if (_internalItems is EqualUnmodifiableListView) return _internalItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_internalItems);
  }

  /// Create a copy of InternalItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InternalItemResponseCopyWith<_InternalItemResponse> get copyWith =>
      __$InternalItemResponseCopyWithImpl<_InternalItemResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InternalItemResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InternalItemResponse &&
            const DeepCollectionEquality()
                .equals(other._internalItems, _internalItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_internalItems));

  @override
  String toString() {
    return 'InternalItemResponse(internalItems: $internalItems)';
  }
}

/// @nodoc
abstract mixin class _$InternalItemResponseCopyWith<$Res>
    implements $InternalItemResponseCopyWith<$Res> {
  factory _$InternalItemResponseCopyWith(_InternalItemResponse value,
          $Res Function(_InternalItemResponse) _then) =
      __$InternalItemResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<ItemResponse> internalItems});
}

/// @nodoc
class __$InternalItemResponseCopyWithImpl<$Res>
    implements _$InternalItemResponseCopyWith<$Res> {
  __$InternalItemResponseCopyWithImpl(this._self, this._then);

  final _InternalItemResponse _self;
  final $Res Function(_InternalItemResponse) _then;

  /// Create a copy of InternalItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? internalItems = null,
  }) {
    return _then(_InternalItemResponse(
      internalItems: null == internalItems
          ? _self._internalItems
          : internalItems // ignore: cast_nullable_to_non_nullable
              as List<ItemResponse>,
    ));
  }
}

// dart format on
