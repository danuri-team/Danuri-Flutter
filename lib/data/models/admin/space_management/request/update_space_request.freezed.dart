// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_space_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateSpaceRequest {
  String get name;
  String get startAt;
  String get endAt;

  /// Create a copy of UpdateSpaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateSpaceRequestCopyWith<UpdateSpaceRequest> get copyWith =>
      _$UpdateSpaceRequestCopyWithImpl<UpdateSpaceRequest>(
          this as UpdateSpaceRequest, _$identity);

  /// Serializes this UpdateSpaceRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateSpaceRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, startAt, endAt);

  @override
  String toString() {
    return 'UpdateSpaceRequest(name: $name, startAt: $startAt, endAt: $endAt)';
  }
}

/// @nodoc
abstract mixin class $UpdateSpaceRequestCopyWith<$Res> {
  factory $UpdateSpaceRequestCopyWith(
          UpdateSpaceRequest value, $Res Function(UpdateSpaceRequest) _then) =
      _$UpdateSpaceRequestCopyWithImpl;
  @useResult
  $Res call({String name, String startAt, String endAt});
}

/// @nodoc
class _$UpdateSpaceRequestCopyWithImpl<$Res>
    implements $UpdateSpaceRequestCopyWith<$Res> {
  _$UpdateSpaceRequestCopyWithImpl(this._self, this._then);

  final UpdateSpaceRequest _self;
  final $Res Function(UpdateSpaceRequest) _then;

  /// Create a copy of UpdateSpaceRequest
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
class _UpdateSpaceRequest implements UpdateSpaceRequest {
  _UpdateSpaceRequest(
      {required this.name, required this.startAt, required this.endAt});
  factory _UpdateSpaceRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateSpaceRequestFromJson(json);

  @override
  final String name;
  @override
  final String startAt;
  @override
  final String endAt;

  /// Create a copy of UpdateSpaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateSpaceRequestCopyWith<_UpdateSpaceRequest> get copyWith =>
      __$UpdateSpaceRequestCopyWithImpl<_UpdateSpaceRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateSpaceRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateSpaceRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, startAt, endAt);

  @override
  String toString() {
    return 'UpdateSpaceRequest(name: $name, startAt: $startAt, endAt: $endAt)';
  }
}

/// @nodoc
abstract mixin class _$UpdateSpaceRequestCopyWith<$Res>
    implements $UpdateSpaceRequestCopyWith<$Res> {
  factory _$UpdateSpaceRequestCopyWith(
          _UpdateSpaceRequest value, $Res Function(_UpdateSpaceRequest) _then) =
      __$UpdateSpaceRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String startAt, String endAt});
}

/// @nodoc
class __$UpdateSpaceRequestCopyWithImpl<$Res>
    implements _$UpdateSpaceRequestCopyWith<$Res> {
  __$UpdateSpaceRequestCopyWithImpl(this._self, this._then);

  final _UpdateSpaceRequest _self;
  final $Res Function(_UpdateSpaceRequest) _then;

  /// Create a copy of UpdateSpaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? startAt = null,
    Object? endAt = null,
  }) {
    return _then(_UpdateSpaceRequest(
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
