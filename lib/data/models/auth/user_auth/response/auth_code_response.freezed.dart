// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_code_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthCodeResponse {
  String get authCode;

  /// Create a copy of AuthCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthCodeResponseCopyWith<AuthCodeResponse> get copyWith =>
      _$AuthCodeResponseCopyWithImpl<AuthCodeResponse>(
          this as AuthCodeResponse, _$identity);

  /// Serializes this AuthCodeResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthCodeResponse &&
            (identical(other.authCode, authCode) ||
                other.authCode == authCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, authCode);

  @override
  String toString() {
    return 'AuthCodeResponse(authCode: $authCode)';
  }
}

/// @nodoc
abstract mixin class $AuthCodeResponseCopyWith<$Res> {
  factory $AuthCodeResponseCopyWith(
          AuthCodeResponse value, $Res Function(AuthCodeResponse) _then) =
      _$AuthCodeResponseCopyWithImpl;
  @useResult
  $Res call({String authCode});
}

/// @nodoc
class _$AuthCodeResponseCopyWithImpl<$Res>
    implements $AuthCodeResponseCopyWith<$Res> {
  _$AuthCodeResponseCopyWithImpl(this._self, this._then);

  final AuthCodeResponse _self;
  final $Res Function(AuthCodeResponse) _then;

  /// Create a copy of AuthCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authCode = null,
  }) {
    return _then(_self.copyWith(
      authCode: null == authCode
          ? _self.authCode
          : authCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AuthCodeResponse implements AuthCodeResponse {
  _AuthCodeResponse({required this.authCode});
  factory _AuthCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthCodeResponseFromJson(json);

  @override
  final String authCode;

  /// Create a copy of AuthCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthCodeResponseCopyWith<_AuthCodeResponse> get copyWith =>
      __$AuthCodeResponseCopyWithImpl<_AuthCodeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuthCodeResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthCodeResponse &&
            (identical(other.authCode, authCode) ||
                other.authCode == authCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, authCode);

  @override
  String toString() {
    return 'AuthCodeResponse(authCode: $authCode)';
  }
}

/// @nodoc
abstract mixin class _$AuthCodeResponseCopyWith<$Res>
    implements $AuthCodeResponseCopyWith<$Res> {
  factory _$AuthCodeResponseCopyWith(
          _AuthCodeResponse value, $Res Function(_AuthCodeResponse) _then) =
      __$AuthCodeResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String authCode});
}

/// @nodoc
class __$AuthCodeResponseCopyWithImpl<$Res>
    implements _$AuthCodeResponseCopyWith<$Res> {
  __$AuthCodeResponseCopyWithImpl(this._self, this._then);

  final _AuthCodeResponse _self;
  final $Res Function(_AuthCodeResponse) _then;

  /// Create a copy of AuthCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? authCode = null,
  }) {
    return _then(_AuthCodeResponse(
      authCode: null == authCode
          ? _self.authCode
          : authCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
