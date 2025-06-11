// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specific_admin_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpecificAdminInfoResponse {
  String get id;
  String get companyId;
  String get companyName;
  String get email;
  String get phone;
  String get role;
  String get status;

  /// Create a copy of SpecificAdminInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpecificAdminInfoResponseCopyWith<SpecificAdminInfoResponse> get copyWith =>
      _$SpecificAdminInfoResponseCopyWithImpl<SpecificAdminInfoResponse>(
          this as SpecificAdminInfoResponse, _$identity);

  /// Serializes this SpecificAdminInfoResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpecificAdminInfoResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, companyId, companyName, email, phone, role, status);

  @override
  String toString() {
    return 'SpecificAdminInfoResponse(id: $id, companyId: $companyId, companyName: $companyName, email: $email, phone: $phone, role: $role, status: $status)';
  }
}

/// @nodoc
abstract mixin class $SpecificAdminInfoResponseCopyWith<$Res> {
  factory $SpecificAdminInfoResponseCopyWith(SpecificAdminInfoResponse value,
          $Res Function(SpecificAdminInfoResponse) _then) =
      _$SpecificAdminInfoResponseCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String companyId,
      String companyName,
      String email,
      String phone,
      String role,
      String status});
}

/// @nodoc
class _$SpecificAdminInfoResponseCopyWithImpl<$Res>
    implements $SpecificAdminInfoResponseCopyWith<$Res> {
  _$SpecificAdminInfoResponseCopyWithImpl(this._self, this._then);

  final SpecificAdminInfoResponse _self;
  final $Res Function(SpecificAdminInfoResponse) _then;

  /// Create a copy of SpecificAdminInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? companyId = null,
    Object? companyName = null,
    Object? email = null,
    Object? phone = null,
    Object? role = null,
    Object? status = null,
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
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SpecificAdminInfoResponse implements SpecificAdminInfoResponse {
  _SpecificAdminInfoResponse(
      {required this.id,
      required this.companyId,
      required this.companyName,
      required this.email,
      required this.phone,
      required this.role,
      required this.status});
  factory _SpecificAdminInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$SpecificAdminInfoResponseFromJson(json);

  @override
  final String id;
  @override
  final String companyId;
  @override
  final String companyName;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String role;
  @override
  final String status;

  /// Create a copy of SpecificAdminInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpecificAdminInfoResponseCopyWith<_SpecificAdminInfoResponse>
      get copyWith =>
          __$SpecificAdminInfoResponseCopyWithImpl<_SpecificAdminInfoResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SpecificAdminInfoResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpecificAdminInfoResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, companyId, companyName, email, phone, role, status);

  @override
  String toString() {
    return 'SpecificAdminInfoResponse(id: $id, companyId: $companyId, companyName: $companyName, email: $email, phone: $phone, role: $role, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$SpecificAdminInfoResponseCopyWith<$Res>
    implements $SpecificAdminInfoResponseCopyWith<$Res> {
  factory _$SpecificAdminInfoResponseCopyWith(_SpecificAdminInfoResponse value,
          $Res Function(_SpecificAdminInfoResponse) _then) =
      __$SpecificAdminInfoResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String companyId,
      String companyName,
      String email,
      String phone,
      String role,
      String status});
}

/// @nodoc
class __$SpecificAdminInfoResponseCopyWithImpl<$Res>
    implements _$SpecificAdminInfoResponseCopyWith<$Res> {
  __$SpecificAdminInfoResponseCopyWithImpl(this._self, this._then);

  final _SpecificAdminInfoResponse _self;
  final $Res Function(_SpecificAdminInfoResponse) _then;

  /// Create a copy of SpecificAdminInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? companyId = null,
    Object? companyName = null,
    Object? email = null,
    Object? phone = null,
    Object? role = null,
    Object? status = null,
  }) {
    return _then(_SpecificAdminInfoResponse(
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
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
