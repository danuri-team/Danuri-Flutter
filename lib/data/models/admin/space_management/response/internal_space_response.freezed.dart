// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internal_space_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InternalSpaceResponse {
  List<SpaceResponse> get spaces;

  /// Create a copy of InternalSpaceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InternalSpaceResponseCopyWith<InternalSpaceResponse> get copyWith =>
      _$InternalSpaceResponseCopyWithImpl<InternalSpaceResponse>(
          this as InternalSpaceResponse, _$identity);

  /// Serializes this InternalSpaceResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InternalSpaceResponse &&
            const DeepCollectionEquality().equals(other.spaces, spaces));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(spaces));

  @override
  String toString() {
    return 'InternalSpaceResponse(spaces: $spaces)';
  }
}

/// @nodoc
abstract mixin class $InternalSpaceResponseCopyWith<$Res> {
  factory $InternalSpaceResponseCopyWith(InternalSpaceResponse value,
          $Res Function(InternalSpaceResponse) _then) =
      _$InternalSpaceResponseCopyWithImpl;
  @useResult
  $Res call({List<SpaceResponse> spaces});
}

/// @nodoc
class _$InternalSpaceResponseCopyWithImpl<$Res>
    implements $InternalSpaceResponseCopyWith<$Res> {
  _$InternalSpaceResponseCopyWithImpl(this._self, this._then);

  final InternalSpaceResponse _self;
  final $Res Function(InternalSpaceResponse) _then;

  /// Create a copy of InternalSpaceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spaces = null,
  }) {
    return _then(_self.copyWith(
      spaces: null == spaces
          ? _self.spaces
          : spaces // ignore: cast_nullable_to_non_nullable
              as List<SpaceResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _InternalSpaceResponse implements InternalSpaceResponse {
  _InternalSpaceResponse({required final List<SpaceResponse> spaces})
      : _spaces = spaces;
  factory _InternalSpaceResponse.fromJson(Map<String, dynamic> json) =>
      _$InternalSpaceResponseFromJson(json);

  final List<SpaceResponse> _spaces;
  @override
  List<SpaceResponse> get spaces {
    if (_spaces is EqualUnmodifiableListView) return _spaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spaces);
  }

  /// Create a copy of InternalSpaceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InternalSpaceResponseCopyWith<_InternalSpaceResponse> get copyWith =>
      __$InternalSpaceResponseCopyWithImpl<_InternalSpaceResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InternalSpaceResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InternalSpaceResponse &&
            const DeepCollectionEquality().equals(other._spaces, _spaces));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_spaces));

  @override
  String toString() {
    return 'InternalSpaceResponse(spaces: $spaces)';
  }
}

/// @nodoc
abstract mixin class _$InternalSpaceResponseCopyWith<$Res>
    implements $InternalSpaceResponseCopyWith<$Res> {
  factory _$InternalSpaceResponseCopyWith(_InternalSpaceResponse value,
          $Res Function(_InternalSpaceResponse) _then) =
      __$InternalSpaceResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<SpaceResponse> spaces});
}

/// @nodoc
class __$InternalSpaceResponseCopyWithImpl<$Res>
    implements _$InternalSpaceResponseCopyWith<$Res> {
  __$InternalSpaceResponseCopyWithImpl(this._self, this._then);

  final _InternalSpaceResponse _self;
  final $Res Function(_InternalSpaceResponse) _then;

  /// Create a copy of InternalSpaceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? spaces = null,
  }) {
    return _then(_InternalSpaceResponse(
      spaces: null == spaces
          ? _self._spaces
          : spaces // ignore: cast_nullable_to_non_nullable
              as List<SpaceResponse>,
    ));
  }
}

// dart format on
