// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internal_specific_device_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InternalSpecificDeviceResponse {
  String get id;
  String get companyId;
  String get companyName;
  String get createdAt;
  bool get endAt;

  /// Create a copy of InternalSpecificDeviceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InternalSpecificDeviceResponseCopyWith<InternalSpecificDeviceResponse>
      get copyWith => _$InternalSpecificDeviceResponseCopyWithImpl<
              InternalSpecificDeviceResponse>(
          this as InternalSpecificDeviceResponse, _$identity);

  /// Serializes this InternalSpecificDeviceResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InternalSpecificDeviceResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, companyId, companyName, createdAt, endAt);

  @override
  String toString() {
    return 'InternalSpecificDeviceResponse(id: $id, companyId: $companyId, companyName: $companyName, createdAt: $createdAt, endAt: $endAt)';
  }
}

/// @nodoc
abstract mixin class $InternalSpecificDeviceResponseCopyWith<$Res> {
  factory $InternalSpecificDeviceResponseCopyWith(
          InternalSpecificDeviceResponse value,
          $Res Function(InternalSpecificDeviceResponse) _then) =
      _$InternalSpecificDeviceResponseCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String companyId,
      String companyName,
      String createdAt,
      bool endAt});
}

/// @nodoc
class _$InternalSpecificDeviceResponseCopyWithImpl<$Res>
    implements $InternalSpecificDeviceResponseCopyWith<$Res> {
  _$InternalSpecificDeviceResponseCopyWithImpl(this._self, this._then);

  final InternalSpecificDeviceResponse _self;
  final $Res Function(InternalSpecificDeviceResponse) _then;

  /// Create a copy of InternalSpecificDeviceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? companyId = null,
    Object? companyName = null,
    Object? createdAt = null,
    Object? endAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _self.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      endAt: null == endAt
          ? _self.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _InternalSpecificDeviceResponse
    implements InternalSpecificDeviceResponse {
  _InternalSpecificDeviceResponse(
      {required this.id,
      required this.companyId,
      required this.companyName,
      required this.createdAt,
      required this.endAt});
  factory _InternalSpecificDeviceResponse.fromJson(Map<String, dynamic> json) =>
      _$InternalSpecificDeviceResponseFromJson(json);

  @override
  final String id;
  @override
  final String companyId;
  @override
  final String companyName;
  @override
  final String createdAt;
  @override
  final bool endAt;

  /// Create a copy of InternalSpecificDeviceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InternalSpecificDeviceResponseCopyWith<_InternalSpecificDeviceResponse>
      get copyWith => __$InternalSpecificDeviceResponseCopyWithImpl<
          _InternalSpecificDeviceResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InternalSpecificDeviceResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InternalSpecificDeviceResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, companyId, companyName, createdAt, endAt);

  @override
  String toString() {
    return 'InternalSpecificDeviceResponse(id: $id, companyId: $companyId, companyName: $companyName, createdAt: $createdAt, endAt: $endAt)';
  }
}

/// @nodoc
abstract mixin class _$InternalSpecificDeviceResponseCopyWith<$Res>
    implements $InternalSpecificDeviceResponseCopyWith<$Res> {
  factory _$InternalSpecificDeviceResponseCopyWith(
          _InternalSpecificDeviceResponse value,
          $Res Function(_InternalSpecificDeviceResponse) _then) =
      __$InternalSpecificDeviceResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String companyId,
      String companyName,
      String createdAt,
      bool endAt});
}

/// @nodoc
class __$InternalSpecificDeviceResponseCopyWithImpl<$Res>
    implements _$InternalSpecificDeviceResponseCopyWith<$Res> {
  __$InternalSpecificDeviceResponseCopyWithImpl(this._self, this._then);

  final _InternalSpecificDeviceResponse _self;
  final $Res Function(_InternalSpecificDeviceResponse) _then;

  /// Create a copy of InternalSpecificDeviceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? companyId = null,
    Object? companyName = null,
    Object? createdAt = null,
    Object? endAt = null,
  }) {
    return _then(_InternalSpecificDeviceResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _self.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      endAt: null == endAt
          ? _self.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
