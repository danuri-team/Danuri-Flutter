// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
AdminInfoResponse _$AdminInfoResponseFromJson(Map<String, dynamic> json) {
  return _AdminInfoResponseResponse.fromJson(json);
}

/// @nodoc
mixin _$AdminInfoResponse {
  String get id;
  String get company_id;
  String get company_name;
  String get email;
  String get phone;
  RoleType get role;
  StatusType get status;

  /// Create a copy of AdminInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdminInfoResponseCopyWith<AdminInfoResponse> get copyWith =>
      _$AdminInfoResponseCopyWithImpl<AdminInfoResponse>(
          this as AdminInfoResponse, _$identity);

  /// Serializes this AdminInfoResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdminInfoResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.company_id, company_id) ||
                other.company_id == company_id) &&
            (identical(other.company_name, company_name) ||
                other.company_name == company_name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, company_id, company_name, email, phone, role, status);

  @override
  String toString() {
    return 'AdminInfoResponse(id: $id, company_id: $company_id, company_name: $company_name, email: $email, phone: $phone, role: $role, status: $status)';
  }
}

/// @nodoc
abstract mixin class $AdminInfoResponseCopyWith<$Res> {
  factory $AdminInfoResponseCopyWith(
          AdminInfoResponse value, $Res Function(AdminInfoResponse) _then) =
      _$AdminInfoResponseCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String company_id,
      String company_name,
      String email,
      String phone,
      RoleType role,
      StatusType status});
}

/// @nodoc
class _$AdminInfoResponseCopyWithImpl<$Res>
    implements $AdminInfoResponseCopyWith<$Res> {
  _$AdminInfoResponseCopyWithImpl(this._self, this._then);

  final AdminInfoResponse _self;
  final $Res Function(AdminInfoResponse) _then;

  /// Create a copy of AdminInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? company_id = null,
    Object? company_name = null,
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
      company_id: null == company_id
          ? _self.company_id
          : company_id // ignore: cast_nullable_to_non_nullable
              as String,
      company_name: null == company_name
          ? _self.company_name
          : company_name // ignore: cast_nullable_to_non_nullable
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
              as RoleType,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AdminInfoResponseResponse implements AdminInfoResponse {
  _AdminInfoResponseResponse(
      {required this.id,
      required this.company_id,
      required this.company_name,
      required this.email,
      required this.phone,
      required this.role,
      required this.status});
  factory _AdminInfoResponseResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminInfoResponseResponseFromJson(json);

  @override
  final String id;
  @override
  final String company_id;
  @override
  final String company_name;
  @override
  final String email;
  @override
  final String phone;
  @override
  final RoleType role;
  @override
  final StatusType status;

  /// Create a copy of AdminInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdminInfoResponseResponseCopyWith<_AdminInfoResponseResponse>
      get copyWith =>
          __$AdminInfoResponseResponseCopyWithImpl<_AdminInfoResponseResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdminInfoResponseResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdminInfoResponseResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.company_id, company_id) ||
                other.company_id == company_id) &&
            (identical(other.company_name, company_name) ||
                other.company_name == company_name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, company_id, company_name, email, phone, role, status);

  @override
  String toString() {
    return 'AdminInfoResponse(id: $id, company_id: $company_id, company_name: $company_name, email: $email, phone: $phone, role: $role, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$AdminInfoResponseResponseCopyWith<$Res>
    implements $AdminInfoResponseCopyWith<$Res> {
  factory _$AdminInfoResponseResponseCopyWith(_AdminInfoResponseResponse value,
          $Res Function(_AdminInfoResponseResponse) _then) =
      __$AdminInfoResponseResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String company_id,
      String company_name,
      String email,
      String phone,
      RoleType role,
      StatusType status});
}

/// @nodoc
class __$AdminInfoResponseResponseCopyWithImpl<$Res>
    implements _$AdminInfoResponseResponseCopyWith<$Res> {
  __$AdminInfoResponseResponseCopyWithImpl(this._self, this._then);

  final _AdminInfoResponseResponse _self;
  final $Res Function(_AdminInfoResponseResponse) _then;

  /// Create a copy of AdminInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? company_id = null,
    Object? company_name = null,
    Object? email = null,
    Object? phone = null,
    Object? role = null,
    Object? status = null,
  }) {
    return _then(_AdminInfoResponseResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      company_id: null == company_id
          ? _self.company_id
          : company_id // ignore: cast_nullable_to_non_nullable
              as String,
      company_name: null == company_name
          ? _self.company_name
          : company_name // ignore: cast_nullable_to_non_nullable
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
              as RoleType,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
    ));
  }
}

// dart format on
