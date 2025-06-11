// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_internal_device_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateInternalDeviceRequest {
  String get deviceId;
  String get spaceId;

  /// Create a copy of CreateInternalDeviceRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateInternalDeviceRequestCopyWith<CreateInternalDeviceRequest>
      get copyWith => _$CreateInternalDeviceRequestCopyWithImpl<
              CreateInternalDeviceRequest>(
          this as CreateInternalDeviceRequest, _$identity);

  /// Serializes this CreateInternalDeviceRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateInternalDeviceRequest &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.spaceId, spaceId) || other.spaceId == spaceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deviceId, spaceId);

  @override
  String toString() {
    return 'CreateInternalDeviceRequest(deviceId: $deviceId, spaceId: $spaceId)';
  }
}

/// @nodoc
abstract mixin class $CreateInternalDeviceRequestCopyWith<$Res> {
  factory $CreateInternalDeviceRequestCopyWith(
          CreateInternalDeviceRequest value,
          $Res Function(CreateInternalDeviceRequest) _then) =
      _$CreateInternalDeviceRequestCopyWithImpl;
  @useResult
  $Res call({String deviceId, String spaceId});
}

/// @nodoc
class _$CreateInternalDeviceRequestCopyWithImpl<$Res>
    implements $CreateInternalDeviceRequestCopyWith<$Res> {
  _$CreateInternalDeviceRequestCopyWithImpl(this._self, this._then);

  final CreateInternalDeviceRequest _self;
  final $Res Function(CreateInternalDeviceRequest) _then;

  /// Create a copy of CreateInternalDeviceRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? spaceId = null,
  }) {
    return _then(_self.copyWith(
      deviceId: null == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      spaceId: null == spaceId
          ? _self.spaceId
          : spaceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CreateInternalDeviceRequest implements CreateInternalDeviceRequest {
  _CreateInternalDeviceRequest({required this.deviceId, required this.spaceId});
  factory _CreateInternalDeviceRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateInternalDeviceRequestFromJson(json);

  @override
  final String deviceId;
  @override
  final String spaceId;

  /// Create a copy of CreateInternalDeviceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateInternalDeviceRequestCopyWith<_CreateInternalDeviceRequest>
      get copyWith => __$CreateInternalDeviceRequestCopyWithImpl<
          _CreateInternalDeviceRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateInternalDeviceRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateInternalDeviceRequest &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.spaceId, spaceId) || other.spaceId == spaceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deviceId, spaceId);

  @override
  String toString() {
    return 'CreateInternalDeviceRequest(deviceId: $deviceId, spaceId: $spaceId)';
  }
}

/// @nodoc
abstract mixin class _$CreateInternalDeviceRequestCopyWith<$Res>
    implements $CreateInternalDeviceRequestCopyWith<$Res> {
  factory _$CreateInternalDeviceRequestCopyWith(
          _CreateInternalDeviceRequest value,
          $Res Function(_CreateInternalDeviceRequest) _then) =
      __$CreateInternalDeviceRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String deviceId, String spaceId});
}

/// @nodoc
class __$CreateInternalDeviceRequestCopyWithImpl<$Res>
    implements _$CreateInternalDeviceRequestCopyWith<$Res> {
  __$CreateInternalDeviceRequestCopyWithImpl(this._self, this._then);

  final _CreateInternalDeviceRequest _self;
  final $Res Function(_CreateInternalDeviceRequest) _then;

  /// Create a copy of CreateInternalDeviceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? deviceId = null,
    Object? spaceId = null,
  }) {
    return _then(_CreateInternalDeviceRequest(
      deviceId: null == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      spaceId: null == spaceId
          ? _self.spaceId
          : spaceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
