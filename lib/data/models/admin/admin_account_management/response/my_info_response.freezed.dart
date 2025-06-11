// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyInfoResponse {
  String get id;
  String get companyId;
  String get companyName;
  String get email;
  String get phone;
  String get role;
  String get status;

  /// Create a copy of MyInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyInfoResponseCopyWith<MyInfoResponse> get copyWith =>
      _$MyInfoResponseCopyWithImpl<MyInfoResponse>(
          this as MyInfoResponse, _$identity);

  /// Serializes this MyInfoResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyInfoResponse &&
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
    return 'MyInfoResponse(id: $id, companyId: $companyId, companyName: $companyName, email: $email, phone: $phone, role: $role, status: $status)';
  }
}

/// @nodoc
abstract mixin class $MyInfoResponseCopyWith<$Res> {
  factory $MyInfoResponseCopyWith(
          MyInfoResponse value, $Res Function(MyInfoResponse) _then) =
      _$MyInfoResponseCopyWithImpl;
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
class _$MyInfoResponseCopyWithImpl<$Res>
    implements $MyInfoResponseCopyWith<$Res> {
  _$MyInfoResponseCopyWithImpl(this._self, this._then);

  final MyInfoResponse _self;
  final $Res Function(MyInfoResponse) _then;

  /// Create a copy of MyInfoResponse
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
class _MyInfoResponse implements MyInfoResponse {
  _MyInfoResponse(
      {required this.id,
      required this.companyId,
      required this.companyName,
      required this.email,
      required this.phone,
      required this.role,
      required this.status});
  factory _MyInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$MyInfoResponseFromJson(json);

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

  /// Create a copy of MyInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MyInfoResponseCopyWith<_MyInfoResponse> get copyWith =>
      __$MyInfoResponseCopyWithImpl<_MyInfoResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MyInfoResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyInfoResponse &&
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
    return 'MyInfoResponse(id: $id, companyId: $companyId, companyName: $companyName, email: $email, phone: $phone, role: $role, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$MyInfoResponseCopyWith<$Res>
    implements $MyInfoResponseCopyWith<$Res> {
  factory _$MyInfoResponseCopyWith(
          _MyInfoResponse value, $Res Function(_MyInfoResponse) _then) =
      __$MyInfoResponseCopyWithImpl;
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
class __$MyInfoResponseCopyWithImpl<$Res>
    implements _$MyInfoResponseCopyWith<$Res> {
  __$MyInfoResponseCopyWithImpl(this._self, this._then);

  final _MyInfoResponse _self;
  final $Res Function(_MyInfoResponse) _then;

  /// Create a copy of MyInfoResponse
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
    return _then(_MyInfoResponse(
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
