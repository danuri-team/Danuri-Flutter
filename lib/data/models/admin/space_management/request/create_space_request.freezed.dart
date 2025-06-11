// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_space_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateSpaceRequest {
  String get name;
  String get startAt;
  String get endAt;

  /// Create a copy of CreateSpaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateSpaceRequestCopyWith<CreateSpaceRequest> get copyWith =>
      _$CreateSpaceRequestCopyWithImpl<CreateSpaceRequest>(
          this as CreateSpaceRequest, _$identity);

  /// Serializes this CreateSpaceRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateSpaceRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, startAt, endAt);

  @override
  String toString() {
    return 'CreateSpaceRequest(name: $name, startAt: $startAt, endAt: $endAt)';
  }
}

/// @nodoc
abstract mixin class $CreateSpaceRequestCopyWith<$Res> {
  factory $CreateSpaceRequestCopyWith(
          CreateSpaceRequest value, $Res Function(CreateSpaceRequest) _then) =
      _$CreateSpaceRequestCopyWithImpl;
  @useResult
  $Res call({String name, String startAt, String endAt});
}

/// @nodoc
class _$CreateSpaceRequestCopyWithImpl<$Res>
    implements $CreateSpaceRequestCopyWith<$Res> {
  _$CreateSpaceRequestCopyWithImpl(this._self, this._then);

  final CreateSpaceRequest _self;
  final $Res Function(CreateSpaceRequest) _then;

  /// Create a copy of CreateSpaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? startAt = null,
    Object? endAt = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startAt: null == startAt
          ? _self.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as String,
      endAt: null == endAt
          ? _self.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CreateSpaceRequest implements CreateSpaceRequest {
  _CreateSpaceRequest(
      {required this.name, required this.startAt, required this.endAt});
  factory _CreateSpaceRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSpaceRequestFromJson(json);

  @override
  final String name;
  @override
  final String startAt;
  @override
  final String endAt;

  /// Create a copy of CreateSpaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateSpaceRequestCopyWith<_CreateSpaceRequest> get copyWith =>
      __$CreateSpaceRequestCopyWithImpl<_CreateSpaceRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateSpaceRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateSpaceRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, startAt, endAt);

  @override
  String toString() {
    return 'CreateSpaceRequest(name: $name, startAt: $startAt, endAt: $endAt)';
  }
}

/// @nodoc
abstract mixin class _$CreateSpaceRequestCopyWith<$Res>
    implements $CreateSpaceRequestCopyWith<$Res> {
  factory _$CreateSpaceRequestCopyWith(
          _CreateSpaceRequest value, $Res Function(_CreateSpaceRequest) _then) =
      __$CreateSpaceRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String startAt, String endAt});
}

/// @nodoc
class __$CreateSpaceRequestCopyWithImpl<$Res>
    implements _$CreateSpaceRequestCopyWith<$Res> {
  __$CreateSpaceRequestCopyWithImpl(this._self, this._then);

  final _CreateSpaceRequest _self;
  final $Res Function(_CreateSpaceRequest) _then;

  /// Create a copy of CreateSpaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? startAt = null,
    Object? endAt = null,
  }) {
    return _then(_CreateSpaceRequest(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startAt: null == startAt
          ? _self.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as String,
      endAt: null == endAt
          ? _self.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
