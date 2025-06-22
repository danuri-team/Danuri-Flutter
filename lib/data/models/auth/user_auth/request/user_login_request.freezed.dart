// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_login_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserLoginRequest {
  String get phone;

  /// Create a copy of UserLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserLoginRequestCopyWith<UserLoginRequest> get copyWith =>
      _$UserLoginRequestCopyWithImpl<UserLoginRequest>(
          this as UserLoginRequest, _$identity);

  /// Serializes this UserLoginRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserLoginRequest &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @override
  String toString() {
    return 'UserLoginRequest(phone: $phone)';
  }
}

/// @nodoc
abstract mixin class $UserLoginRequestCopyWith<$Res> {
  factory $UserLoginRequestCopyWith(
          UserLoginRequest value, $Res Function(UserLoginRequest) _then) =
      _$UserLoginRequestCopyWithImpl;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class _$UserLoginRequestCopyWithImpl<$Res>
    implements $UserLoginRequestCopyWith<$Res> {
  _$UserLoginRequestCopyWithImpl(this._self, this._then);

  final UserLoginRequest _self;
  final $Res Function(UserLoginRequest) _then;

  /// Create a copy of UserLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_self.copyWith(
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UserLoginRequest implements UserLoginRequest {
  _UserLoginRequest({required this.phone});
  factory _UserLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$UserLoginRequestFromJson(json);

  @override
  final String phone;

  /// Create a copy of UserLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserLoginRequestCopyWith<_UserLoginRequest> get copyWith =>
      __$UserLoginRequestCopyWithImpl<_UserLoginRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserLoginRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserLoginRequest &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @override
  String toString() {
    return 'UserLoginRequest(phone: $phone)';
  }
}

/// @nodoc
abstract mixin class _$UserLoginRequestCopyWith<$Res>
    implements $UserLoginRequestCopyWith<$Res> {
  factory _$UserLoginRequestCopyWith(
          _UserLoginRequest value, $Res Function(_UserLoginRequest) _then) =
      __$UserLoginRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$UserLoginRequestCopyWithImpl<$Res>
    implements _$UserLoginRequestCopyWith<$Res> {
  __$UserLoginRequestCopyWithImpl(this._self, this._then);

  final _UserLoginRequest _self;
  final $Res Function(_UserLoginRequest) _then;

  /// Create a copy of UserLoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phone = null,
  }) {
    return _then(_UserLoginRequest(
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
