// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_login_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminLoginRequest {
  String get email;
  String get password;

  /// Create a copy of AdminLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdminLoginRequestCopyWith<AdminLoginRequest> get copyWith =>
      _$AdminLoginRequestCopyWithImpl<AdminLoginRequest>(
          this as AdminLoginRequest, _$identity);

  /// Serializes this AdminLoginRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdminLoginRequest &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'AdminLoginRequest(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class $AdminLoginRequestCopyWith<$Res> {
  factory $AdminLoginRequestCopyWith(
          AdminLoginRequest value, $Res Function(AdminLoginRequest) _then) =
      _$AdminLoginRequestCopyWithImpl;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$AdminLoginRequestCopyWithImpl<$Res>
    implements $AdminLoginRequestCopyWith<$Res> {
  _$AdminLoginRequestCopyWithImpl(this._self, this._then);

  final AdminLoginRequest _self;
  final $Res Function(AdminLoginRequest) _then;

  /// Create a copy of AdminLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AdminLoginRequest implements AdminLoginRequest {
  _AdminLoginRequest({required this.email, required this.password});
  factory _AdminLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$AdminLoginRequestFromJson(json);

  @override
  final String email;
  @override
  final String password;

  /// Create a copy of AdminLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdminLoginRequestCopyWith<_AdminLoginRequest> get copyWith =>
      __$AdminLoginRequestCopyWithImpl<_AdminLoginRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdminLoginRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdminLoginRequest &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'AdminLoginRequest(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$AdminLoginRequestCopyWith<$Res>
    implements $AdminLoginRequestCopyWith<$Res> {
  factory _$AdminLoginRequestCopyWith(
          _AdminLoginRequest value, $Res Function(_AdminLoginRequest) _then) =
      __$AdminLoginRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$AdminLoginRequestCopyWithImpl<$Res>
    implements _$AdminLoginRequestCopyWith<$Res> {
  __$AdminLoginRequestCopyWithImpl(this._self, this._then);

  final _AdminLoginRequest _self;
  final $Res Function(_AdminLoginRequest) _then;

  /// Create a copy of AdminLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_AdminLoginRequest(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
