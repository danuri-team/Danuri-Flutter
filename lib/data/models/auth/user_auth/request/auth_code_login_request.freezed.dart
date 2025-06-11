// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_code_login_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthCodeLoginRequest {
  String get phone;
  String get authCode;

  /// Create a copy of AuthCodeLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthCodeLoginRequestCopyWith<AuthCodeLoginRequest> get copyWith =>
      _$AuthCodeLoginRequestCopyWithImpl<AuthCodeLoginRequest>(
          this as AuthCodeLoginRequest, _$identity);

  /// Serializes this AuthCodeLoginRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthCodeLoginRequest &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.authCode, authCode) ||
                other.authCode == authCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phone, authCode);

  @override
  String toString() {
    return 'AuthCodeLoginRequest(phone: $phone, authCode: $authCode)';
  }
}

/// @nodoc
abstract mixin class $AuthCodeLoginRequestCopyWith<$Res> {
  factory $AuthCodeLoginRequestCopyWith(AuthCodeLoginRequest value,
          $Res Function(AuthCodeLoginRequest) _then) =
      _$AuthCodeLoginRequestCopyWithImpl;
  @useResult
  $Res call({String phone, String authCode});
}

/// @nodoc
class _$AuthCodeLoginRequestCopyWithImpl<$Res>
    implements $AuthCodeLoginRequestCopyWith<$Res> {
  _$AuthCodeLoginRequestCopyWithImpl(this._self, this._then);

  final AuthCodeLoginRequest _self;
  final $Res Function(AuthCodeLoginRequest) _then;

  /// Create a copy of AuthCodeLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? authCode = null,
  }) {
    return _then(_self.copyWith(
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      authCode: null == authCode
          ? _self.authCode
          : authCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AuthCodeLoginRequest implements AuthCodeLoginRequest {
  _AuthCodeLoginRequest({required this.phone, required this.authCode});
  factory _AuthCodeLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthCodeLoginRequestFromJson(json);

  @override
  final String phone;
  @override
  final String authCode;

  /// Create a copy of AuthCodeLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthCodeLoginRequestCopyWith<_AuthCodeLoginRequest> get copyWith =>
      __$AuthCodeLoginRequestCopyWithImpl<_AuthCodeLoginRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuthCodeLoginRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthCodeLoginRequest &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.authCode, authCode) ||
                other.authCode == authCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phone, authCode);

  @override
  String toString() {
    return 'AuthCodeLoginRequest(phone: $phone, authCode: $authCode)';
  }
}

/// @nodoc
abstract mixin class _$AuthCodeLoginRequestCopyWith<$Res>
    implements $AuthCodeLoginRequestCopyWith<$Res> {
  factory _$AuthCodeLoginRequestCopyWith(_AuthCodeLoginRequest value,
          $Res Function(_AuthCodeLoginRequest) _then) =
      __$AuthCodeLoginRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String phone, String authCode});
}

/// @nodoc
class __$AuthCodeLoginRequestCopyWithImpl<$Res>
    implements _$AuthCodeLoginRequestCopyWith<$Res> {
  __$AuthCodeLoginRequestCopyWithImpl(this._self, this._then);

  final _AuthCodeLoginRequest _self;
  final $Res Function(_AuthCodeLoginRequest) _then;

  /// Create a copy of AuthCodeLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phone = null,
    Object? authCode = null,
  }) {
    return _then(_AuthCodeLoginRequest(
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      authCode: null == authCode
          ? _self.authCode
          : authCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
