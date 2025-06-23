// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_token_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RefreshTokenResponse {
  String get token;
  int get expired_at;

  /// Create a copy of RefreshTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RefreshTokenResponseCopyWith<RefreshTokenResponse> get copyWith =>
      _$RefreshTokenResponseCopyWithImpl<RefreshTokenResponse>(
          this as RefreshTokenResponse, _$identity);

  /// Serializes this RefreshTokenResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RefreshTokenResponse &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.expired_at, expired_at) ||
                other.expired_at == expired_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, expired_at);

  @override
  String toString() {
    return 'RefreshTokenResponse(token: $token, expired_at: $expired_at)';
  }
}

/// @nodoc
abstract mixin class $RefreshTokenResponseCopyWith<$Res> {
  factory $RefreshTokenResponseCopyWith(RefreshTokenResponse value,
          $Res Function(RefreshTokenResponse) _then) =
      _$RefreshTokenResponseCopyWithImpl;
  @useResult
  $Res call({String token, int expired_at});
}

/// @nodoc
class _$RefreshTokenResponseCopyWithImpl<$Res>
    implements $RefreshTokenResponseCopyWith<$Res> {
  _$RefreshTokenResponseCopyWithImpl(this._self, this._then);

  final RefreshTokenResponse _self;
  final $Res Function(RefreshTokenResponse) _then;

  /// Create a copy of RefreshTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? expired_at = null,
  }) {
    return _then(_self.copyWith(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      expired_at: null == expired_at
          ? _self.expired_at
          : expired_at // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RefreshTokenResponse implements RefreshTokenResponse {
  _RefreshTokenResponse({required this.token, required this.expired_at});
  factory _RefreshTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenResponseFromJson(json);

  @override
  final String token;
  @override
  final int expired_at;

  /// Create a copy of RefreshTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RefreshTokenResponseCopyWith<_RefreshTokenResponse> get copyWith =>
      __$RefreshTokenResponseCopyWithImpl<_RefreshTokenResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RefreshTokenResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RefreshTokenResponse &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.expired_at, expired_at) ||
                other.expired_at == expired_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, expired_at);

  @override
  String toString() {
    return 'RefreshTokenResponse(token: $token, expired_at: $expired_at)';
  }
}

/// @nodoc
abstract mixin class _$RefreshTokenResponseCopyWith<$Res>
    implements $RefreshTokenResponseCopyWith<$Res> {
  factory _$RefreshTokenResponseCopyWith(_RefreshTokenResponse value,
          $Res Function(_RefreshTokenResponse) _then) =
      __$RefreshTokenResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String token, int expired_at});
}

/// @nodoc
class __$RefreshTokenResponseCopyWithImpl<$Res>
    implements _$RefreshTokenResponseCopyWith<$Res> {
  __$RefreshTokenResponseCopyWithImpl(this._self, this._then);

  final _RefreshTokenResponse _self;
  final $Res Function(_RefreshTokenResponse) _then;

  /// Create a copy of RefreshTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? token = null,
    Object? expired_at = null,
  }) {
    return _then(_RefreshTokenResponse(
      token: null == token
          ? _self.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      expired_at: null == expired_at
          ? _self.expired_at
          : expired_at // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
