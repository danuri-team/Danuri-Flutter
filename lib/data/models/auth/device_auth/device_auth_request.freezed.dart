// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_auth_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeviceAuthRequest {
  String get device_id;

  /// Create a copy of DeviceAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeviceAuthRequestCopyWith<DeviceAuthRequest> get copyWith =>
      _$DeviceAuthRequestCopyWithImpl<DeviceAuthRequest>(
          this as DeviceAuthRequest, _$identity);

  /// Serializes this DeviceAuthRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeviceAuthRequest &&
            (identical(other.device_id, device_id) ||
                other.device_id == device_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, device_id);

  @override
  String toString() {
    return 'DeviceAuthRequest(device_id: $device_id)';
  }
}

/// @nodoc
abstract mixin class $DeviceAuthRequestCopyWith<$Res> {
  factory $DeviceAuthRequestCopyWith(
          DeviceAuthRequest value, $Res Function(DeviceAuthRequest) _then) =
      _$DeviceAuthRequestCopyWithImpl;
  @useResult
  $Res call({String device_id});
}

/// @nodoc
class _$DeviceAuthRequestCopyWithImpl<$Res>
    implements $DeviceAuthRequestCopyWith<$Res> {
  _$DeviceAuthRequestCopyWithImpl(this._self, this._then);

  final DeviceAuthRequest _self;
  final $Res Function(DeviceAuthRequest) _then;

  /// Create a copy of DeviceAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device_id = null,
  }) {
    return _then(_self.copyWith(
      device_id: null == device_id
          ? _self.device_id
          : device_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DeviceAuthRequest implements DeviceAuthRequest {
  _DeviceAuthRequest({required this.device_id});
  factory _DeviceAuthRequest.fromJson(Map<String, dynamic> json) =>
      _$DeviceAuthRequestFromJson(json);

  @override
  final String device_id;

  /// Create a copy of DeviceAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeviceAuthRequestCopyWith<_DeviceAuthRequest> get copyWith =>
      __$DeviceAuthRequestCopyWithImpl<_DeviceAuthRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DeviceAuthRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeviceAuthRequest &&
            (identical(other.device_id, device_id) ||
                other.device_id == device_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, device_id);

  @override
  String toString() {
    return 'DeviceAuthRequest(device_id: $device_id)';
  }
}

/// @nodoc
abstract mixin class _$DeviceAuthRequestCopyWith<$Res>
    implements $DeviceAuthRequestCopyWith<$Res> {
  factory _$DeviceAuthRequestCopyWith(
          _DeviceAuthRequest value, $Res Function(_DeviceAuthRequest) _then) =
      __$DeviceAuthRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String device_id});
}

/// @nodoc
class __$DeviceAuthRequestCopyWithImpl<$Res>
    implements _$DeviceAuthRequestCopyWith<$Res> {
  __$DeviceAuthRequestCopyWithImpl(this._self, this._then);

  final _DeviceAuthRequest _self;
  final $Res Function(_DeviceAuthRequest) _then;

  /// Create a copy of DeviceAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? device_id = null,
  }) {
    return _then(_DeviceAuthRequest(
      device_id: null == device_id
          ? _self.device_id
          : device_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
