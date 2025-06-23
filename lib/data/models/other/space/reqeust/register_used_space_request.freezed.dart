// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_used_space_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterUsedSpaceRequest {
  String get space_id;

  /// Create a copy of RegisterUsedSpaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterUsedSpaceRequestCopyWith<RegisterUsedSpaceRequest> get copyWith =>
      _$RegisterUsedSpaceRequestCopyWithImpl<RegisterUsedSpaceRequest>(
          this as RegisterUsedSpaceRequest, _$identity);

  /// Serializes this RegisterUsedSpaceRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterUsedSpaceRequest &&
            (identical(other.space_id, space_id) ||
                other.space_id == space_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, space_id);

  @override
  String toString() {
    return 'RegisterUsedSpaceRequest(space_id: $space_id)';
  }
}

/// @nodoc
abstract mixin class $RegisterUsedSpaceRequestCopyWith<$Res> {
  factory $RegisterUsedSpaceRequestCopyWith(RegisterUsedSpaceRequest value,
          $Res Function(RegisterUsedSpaceRequest) _then) =
      _$RegisterUsedSpaceRequestCopyWithImpl;
  @useResult
  $Res call({String space_id});
}

/// @nodoc
class _$RegisterUsedSpaceRequestCopyWithImpl<$Res>
    implements $RegisterUsedSpaceRequestCopyWith<$Res> {
  _$RegisterUsedSpaceRequestCopyWithImpl(this._self, this._then);

  final RegisterUsedSpaceRequest _self;
  final $Res Function(RegisterUsedSpaceRequest) _then;

  /// Create a copy of RegisterUsedSpaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? space_id = null,
  }) {
    return _then(_self.copyWith(
      space_id: null == space_id
          ? _self.space_id
          : space_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RegisterUsedSpaceRequest implements RegisterUsedSpaceRequest {
  _RegisterUsedSpaceRequest({required this.space_id});
  factory _RegisterUsedSpaceRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterUsedSpaceRequestFromJson(json);

  @override
  final String space_id;

  /// Create a copy of RegisterUsedSpaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegisterUsedSpaceRequestCopyWith<_RegisterUsedSpaceRequest> get copyWith =>
      __$RegisterUsedSpaceRequestCopyWithImpl<_RegisterUsedSpaceRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RegisterUsedSpaceRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterUsedSpaceRequest &&
            (identical(other.space_id, space_id) ||
                other.space_id == space_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, space_id);

  @override
  String toString() {
    return 'RegisterUsedSpaceRequest(space_id: $space_id)';
  }
}

/// @nodoc
abstract mixin class _$RegisterUsedSpaceRequestCopyWith<$Res>
    implements $RegisterUsedSpaceRequestCopyWith<$Res> {
  factory _$RegisterUsedSpaceRequestCopyWith(_RegisterUsedSpaceRequest value,
          $Res Function(_RegisterUsedSpaceRequest) _then) =
      __$RegisterUsedSpaceRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String space_id});
}

/// @nodoc
class __$RegisterUsedSpaceRequestCopyWithImpl<$Res>
    implements _$RegisterUsedSpaceRequestCopyWith<$Res> {
  __$RegisterUsedSpaceRequestCopyWithImpl(this._self, this._then);

  final _RegisterUsedSpaceRequest _self;
  final $Res Function(_RegisterUsedSpaceRequest) _then;

  /// Create a copy of RegisterUsedSpaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? space_id = null,
  }) {
    return _then(_RegisterUsedSpaceRequest(
      space_id: null == space_id
          ? _self.space_id
          : space_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
