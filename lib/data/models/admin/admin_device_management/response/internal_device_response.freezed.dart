// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internal_device_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InternalDeviceResponse {
  String get id;
  String get created_at;

  /// Create a copy of InternalDeviceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InternalDeviceResponseCopyWith<InternalDeviceResponse> get copyWith =>
      _$InternalDeviceResponseCopyWithImpl<InternalDeviceResponse>(
          this as InternalDeviceResponse, _$identity);

  /// Serializes this InternalDeviceResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InternalDeviceResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, created_at);

  @override
  String toString() {
    return 'InternalDeviceResponse(id: $id, created_at: $created_at)';
  }
}

/// @nodoc
abstract mixin class $InternalDeviceResponseCopyWith<$Res> {
  factory $InternalDeviceResponseCopyWith(InternalDeviceResponse value,
          $Res Function(InternalDeviceResponse) _then) =
      _$InternalDeviceResponseCopyWithImpl;
  @useResult
  $Res call({String id, String created_at});
}

/// @nodoc
class _$InternalDeviceResponseCopyWithImpl<$Res>
    implements $InternalDeviceResponseCopyWith<$Res> {
  _$InternalDeviceResponseCopyWithImpl(this._self, this._then);

  final InternalDeviceResponse _self;
  final $Res Function(InternalDeviceResponse) _then;

  /// Create a copy of InternalDeviceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created_at = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _self.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _InternalDeviceResponse implements InternalDeviceResponse {
  _InternalDeviceResponse({required this.id, required this.created_at});
  factory _InternalDeviceResponse.fromJson(Map<String, dynamic> json) =>
      _$InternalDeviceResponseFromJson(json);

  @override
  final String id;
  @override
  final String created_at;

  /// Create a copy of InternalDeviceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InternalDeviceResponseCopyWith<_InternalDeviceResponse> get copyWith =>
      __$InternalDeviceResponseCopyWithImpl<_InternalDeviceResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InternalDeviceResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InternalDeviceResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, created_at);

  @override
  String toString() {
    return 'InternalDeviceResponse(id: $id, created_at: $created_at)';
  }
}

/// @nodoc
abstract mixin class _$InternalDeviceResponseCopyWith<$Res>
    implements $InternalDeviceResponseCopyWith<$Res> {
  factory _$InternalDeviceResponseCopyWith(_InternalDeviceResponse value,
          $Res Function(_InternalDeviceResponse) _then) =
      __$InternalDeviceResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String created_at});
}

/// @nodoc
class __$InternalDeviceResponseCopyWithImpl<$Res>
    implements _$InternalDeviceResponseCopyWith<$Res> {
  __$InternalDeviceResponseCopyWithImpl(this._self, this._then);

  final _InternalDeviceResponse _self;
  final $Res Function(_InternalDeviceResponse) _then;

  /// Create a copy of InternalDeviceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? created_at = null,
  }) {
    return _then(_InternalDeviceResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _self.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
