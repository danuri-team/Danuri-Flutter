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
  String get device_id;
  String get space_id;

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
            (identical(other.device_id, device_id) ||
                other.device_id == device_id) &&
            (identical(other.space_id, space_id) ||
                other.space_id == space_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, device_id, space_id);

  @override
  String toString() {
    return 'CreateInternalDeviceRequest(device_id: $device_id, space_id: $space_id)';
  }
}

/// @nodoc
abstract mixin class $CreateInternalDeviceRequestCopyWith<$Res> {
  factory $CreateInternalDeviceRequestCopyWith(
          CreateInternalDeviceRequest value,
          $Res Function(CreateInternalDeviceRequest) _then) =
      _$CreateInternalDeviceRequestCopyWithImpl;
  @useResult
  $Res call({String device_id, String space_id});
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
    Object? device_id = null,
    Object? space_id = null,
  }) {
    return _then(_self.copyWith(
      device_id: null == device_id
          ? _self.device_id
          : device_id // ignore: cast_nullable_to_non_nullable
              as String,
      space_id: null == space_id
          ? _self.space_id
          : space_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CreateInternalDeviceRequest implements CreateInternalDeviceRequest {
  _CreateInternalDeviceRequest(
      {required this.device_id, required this.space_id});
  factory _CreateInternalDeviceRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateInternalDeviceRequestFromJson(json);

  @override
  final String device_id;
  @override
  final String space_id;

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
            (identical(other.device_id, device_id) ||
                other.device_id == device_id) &&
            (identical(other.space_id, space_id) ||
                other.space_id == space_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, device_id, space_id);

  @override
  String toString() {
    return 'CreateInternalDeviceRequest(device_id: $device_id, space_id: $space_id)';
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
  $Res call({String device_id, String space_id});
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
    Object? device_id = null,
    Object? space_id = null,
  }) {
    return _then(_CreateInternalDeviceRequest(
      device_id: null == device_id
          ? _self.device_id
          : device_id // ignore: cast_nullable_to_non_nullable
              as String,
      space_id: null == space_id
          ? _self.space_id
          : space_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
