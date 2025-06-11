// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_internal_device_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AllInternalDeviceResponse {
  List<InternalSpecificDeviceResponse> get devices;

  /// Create a copy of AllInternalDeviceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AllInternalDeviceResponseCopyWith<AllInternalDeviceResponse> get copyWith =>
      _$AllInternalDeviceResponseCopyWithImpl<AllInternalDeviceResponse>(
          this as AllInternalDeviceResponse, _$identity);

  /// Serializes this AllInternalDeviceResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AllInternalDeviceResponse &&
            const DeepCollectionEquality().equals(other.devices, devices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(devices));

  @override
  String toString() {
    return 'AllInternalDeviceResponse(devices: $devices)';
  }
}

/// @nodoc
abstract mixin class $AllInternalDeviceResponseCopyWith<$Res> {
  factory $AllInternalDeviceResponseCopyWith(AllInternalDeviceResponse value,
          $Res Function(AllInternalDeviceResponse) _then) =
      _$AllInternalDeviceResponseCopyWithImpl;
  @useResult
  $Res call({List<InternalSpecificDeviceResponse> devices});
}

/// @nodoc
class _$AllInternalDeviceResponseCopyWithImpl<$Res>
    implements $AllInternalDeviceResponseCopyWith<$Res> {
  _$AllInternalDeviceResponseCopyWithImpl(this._self, this._then);

  final AllInternalDeviceResponse _self;
  final $Res Function(AllInternalDeviceResponse) _then;

  /// Create a copy of AllInternalDeviceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devices = null,
  }) {
    return _then(_self.copyWith(
      devices: null == devices
          ? _self.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<InternalSpecificDeviceResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AllInternalDeviceResponse implements AllInternalDeviceResponse {
  _AllInternalDeviceResponse(
      {required final List<InternalSpecificDeviceResponse> devices})
      : _devices = devices;
  factory _AllInternalDeviceResponse.fromJson(Map<String, dynamic> json) =>
      _$AllInternalDeviceResponseFromJson(json);

  final List<InternalSpecificDeviceResponse> _devices;
  @override
  List<InternalSpecificDeviceResponse> get devices {
    if (_devices is EqualUnmodifiableListView) return _devices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_devices);
  }

  /// Create a copy of AllInternalDeviceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AllInternalDeviceResponseCopyWith<_AllInternalDeviceResponse>
      get copyWith =>
          __$AllInternalDeviceResponseCopyWithImpl<_AllInternalDeviceResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AllInternalDeviceResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AllInternalDeviceResponse &&
            const DeepCollectionEquality().equals(other._devices, _devices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_devices));

  @override
  String toString() {
    return 'AllInternalDeviceResponse(devices: $devices)';
  }
}

/// @nodoc
abstract mixin class _$AllInternalDeviceResponseCopyWith<$Res>
    implements $AllInternalDeviceResponseCopyWith<$Res> {
  factory _$AllInternalDeviceResponseCopyWith(_AllInternalDeviceResponse value,
          $Res Function(_AllInternalDeviceResponse) _then) =
      __$AllInternalDeviceResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<InternalSpecificDeviceResponse> devices});
}

/// @nodoc
class __$AllInternalDeviceResponseCopyWithImpl<$Res>
    implements _$AllInternalDeviceResponseCopyWith<$Res> {
  __$AllInternalDeviceResponseCopyWithImpl(this._self, this._then);

  final _AllInternalDeviceResponse _self;
  final $Res Function(_AllInternalDeviceResponse) _then;

  /// Create a copy of AllInternalDeviceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? devices = null,
  }) {
    return _then(_AllInternalDeviceResponse(
      devices: null == devices
          ? _self._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<InternalSpecificDeviceResponse>,
    ));
  }
}

// dart format on
