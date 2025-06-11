// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpRequest {
  String get companyId;
  String get email;
  String get password;
  String get phone;

  /// Create a copy of SignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignUpRequestCopyWith<SignUpRequest> get copyWith =>
      _$SignUpRequestCopyWithImpl<SignUpRequest>(
          this as SignUpRequest, _$identity);

  /// Serializes this SignUpRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpRequest &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, companyId, email, password, phone);

  @override
  String toString() {
    return 'SignUpRequest(companyId: $companyId, email: $email, password: $password, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class $SignUpRequestCopyWith<$Res> {
  factory $SignUpRequestCopyWith(
          SignUpRequest value, $Res Function(SignUpRequest) _then) =
      _$SignUpRequestCopyWithImpl;
  @useResult
  $Res call({String companyId, String email, String password, String phone});
}

/// @nodoc
class _$SignUpRequestCopyWithImpl<$Res>
    implements $SignUpRequestCopyWith<$Res> {
  _$SignUpRequestCopyWithImpl(this._self, this._then);

  final SignUpRequest _self;
  final $Res Function(SignUpRequest) _then;

  /// Create a copy of SignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyId = null,
    Object? email = null,
    Object? password = null,
    Object? phone = null,
  }) {
    return _then(_self.copyWith(
      companyId: null == companyId
          ? _self.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SignUpRequest implements SignUpRequest {
  _SignUpRequest(
      {required this.companyId,
      required this.email,
      required this.password,
      required this.phone});
  factory _SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);

  @override
  final String companyId;
  @override
  final String email;
  @override
  final String password;
  @override
  final String phone;

  /// Create a copy of SignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignUpRequestCopyWith<_SignUpRequest> get copyWith =>
      __$SignUpRequestCopyWithImpl<_SignUpRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SignUpRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpRequest &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, companyId, email, password, phone);

  @override
  String toString() {
    return 'SignUpRequest(companyId: $companyId, email: $email, password: $password, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class _$SignUpRequestCopyWith<$Res>
    implements $SignUpRequestCopyWith<$Res> {
  factory _$SignUpRequestCopyWith(
          _SignUpRequest value, $Res Function(_SignUpRequest) _then) =
      __$SignUpRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String companyId, String email, String password, String phone});
}

/// @nodoc
class __$SignUpRequestCopyWithImpl<$Res>
    implements _$SignUpRequestCopyWith<$Res> {
  __$SignUpRequestCopyWithImpl(this._self, this._then);

  final _SignUpRequest _self;
  final $Res Function(_SignUpRequest) _then;

  /// Create a copy of SignUpRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? companyId = null,
    Object? email = null,
    Object? password = null,
    Object? phone = null,
  }) {
    return _then(_SignUpRequest(
      companyId: null == companyId
          ? _self.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
