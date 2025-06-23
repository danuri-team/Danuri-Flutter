// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_internal_specific_device_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateInternalSpecificDeviceRequest {
  String get space_id;
  bool get is_activate;

  /// Create a copy of UpdateInternalSpecificDeviceRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateInternalSpecificDeviceRequestCopyWith<
          UpdateInternalSpecificDeviceRequest>
      get copyWith => _$UpdateInternalSpecificDeviceRequestCopyWithImpl<
              UpdateInternalSpecificDeviceRequest>(
          this as UpdateInternalSpecificDeviceRequest, _$identity);

  /// Serializes this UpdateInternalSpecificDeviceRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateInternalSpecificDeviceRequest &&
            (identical(other.space_id, space_id) ||
                other.space_id == space_id) &&
            (identical(other.is_activate, is_activate) ||
                other.is_activate == is_activate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, space_id, is_activate);

  @override
  String toString() {
    return 'UpdateInternalSpecificDeviceRequest(space_id: $space_id, is_activate: $is_activate)';
  }
}

/// @nodoc
abstract mixin class $UpdateInternalSpecificDeviceRequestCopyWith<$Res> {
  factory $UpdateInternalSpecificDeviceRequestCopyWith(
          UpdateInternalSpecificDeviceRequest value,
          $Res Function(UpdateInternalSpecificDeviceRequest) _then) =
      _$UpdateInternalSpecificDeviceRequestCopyWithImpl;
  @useResult
  $Res call({String space_id, bool is_activate});
}

/// @nodoc
class _$UpdateInternalSpecificDeviceRequestCopyWithImpl<$Res>
    implements $UpdateInternalSpecificDeviceRequestCopyWith<$Res> {
  _$UpdateInternalSpecificDeviceRequestCopyWithImpl(this._self, this._then);

  final UpdateInternalSpecificDeviceRequest _self;
  final $Res Function(UpdateInternalSpecificDeviceRequest) _then;

  /// Create a copy of UpdateInternalSpecificDeviceRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? space_id = null,
    Object? is_activate = null,
  }) {
    return _then(_self.copyWith(
      space_id: null == space_id
          ? _self.space_id
          : space_id // ignore: cast_nullable_to_non_nullable
              as String,
      is_activate: null == is_activate
          ? _self.is_activate
          : is_activate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateInternalSpecificDeviceRequest
    implements UpdateInternalSpecificDeviceRequest {
  _UpdateInternalSpecificDeviceRequest(
      {required this.space_id, required this.is_activate});
  factory _UpdateInternalSpecificDeviceRequest.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateInternalSpecificDeviceRequestFromJson(json);

  @override
  final String space_id;
  @override
  final bool is_activate;

  /// Create a copy of UpdateInternalSpecificDeviceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateInternalSpecificDeviceRequestCopyWith<
          _UpdateInternalSpecificDeviceRequest>
      get copyWith => __$UpdateInternalSpecificDeviceRequestCopyWithImpl<
          _UpdateInternalSpecificDeviceRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateInternalSpecificDeviceRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateInternalSpecificDeviceRequest &&
            (identical(other.space_id, space_id) ||
                other.space_id == space_id) &&
            (identical(other.is_activate, is_activate) ||
                other.is_activate == is_activate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, space_id, is_activate);

  @override
  String toString() {
    return 'UpdateInternalSpecificDeviceRequest(space_id: $space_id, is_activate: $is_activate)';
  }
}

/// @nodoc
abstract mixin class _$UpdateInternalSpecificDeviceRequestCopyWith<$Res>
    implements $UpdateInternalSpecificDeviceRequestCopyWith<$Res> {
  factory _$UpdateInternalSpecificDeviceRequestCopyWith(
          _UpdateInternalSpecificDeviceRequest value,
          $Res Function(_UpdateInternalSpecificDeviceRequest) _then) =
      __$UpdateInternalSpecificDeviceRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String space_id, bool is_activate});
}

/// @nodoc
class __$UpdateInternalSpecificDeviceRequestCopyWithImpl<$Res>
    implements _$UpdateInternalSpecificDeviceRequestCopyWith<$Res> {
  __$UpdateInternalSpecificDeviceRequestCopyWithImpl(this._self, this._then);

  final _UpdateInternalSpecificDeviceRequest _self;
  final $Res Function(_UpdateInternalSpecificDeviceRequest) _then;

  /// Create a copy of UpdateInternalSpecificDeviceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? space_id = null,
    Object? is_activate = null,
  }) {
    return _then(_UpdateInternalSpecificDeviceRequest(
      space_id: null == space_id
          ? _self.space_id
          : space_id // ignore: cast_nullable_to_non_nullable
              as String,
      is_activate: null == is_activate
          ? _self.is_activate
          : is_activate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
