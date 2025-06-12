// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tokens_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TokensResponse {
  AccessTokenResponse get accessToken;
  RefreshTokenResponse get refreshToken;

  /// Create a copy of TokensResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TokensResponseCopyWith<TokensResponse> get copyWith =>
      _$TokensResponseCopyWithImpl<TokensResponse>(
          this as TokensResponse, _$identity);

  /// Serializes this TokensResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TokensResponse &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @override
  String toString() {
    return 'TokensResponse(accessToken: $accessToken, refreshToken: $refreshToken)';
  }
}

/// @nodoc
abstract mixin class $TokensResponseCopyWith<$Res> {
  factory $TokensResponseCopyWith(
          TokensResponse value, $Res Function(TokensResponse) _then) =
      _$TokensResponseCopyWithImpl;
  @useResult
  $Res call(
      {AccessTokenResponse accessToken, RefreshTokenResponse refreshToken});

  $AccessTokenResponseCopyWith<$Res> get accessToken;
  $RefreshTokenResponseCopyWith<$Res> get refreshToken;
}

/// @nodoc
class _$TokensResponseCopyWithImpl<$Res>
    implements $TokensResponseCopyWith<$Res> {
  _$TokensResponseCopyWithImpl(this._self, this._then);

  final TokensResponse _self;
  final $Res Function(TokensResponse) _then;

  /// Create a copy of TokensResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_self.copyWith(
      accessToken: null == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as AccessTokenResponse,
      refreshToken: null == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as RefreshTokenResponse,
    ));
  }

  /// Create a copy of TokensResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccessTokenResponseCopyWith<$Res> get accessToken {
    return $AccessTokenResponseCopyWith<$Res>(_self.accessToken, (value) {
      return _then(_self.copyWith(accessToken: value));
    });
  }

  /// Create a copy of TokensResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefreshTokenResponseCopyWith<$Res> get refreshToken {
    return $RefreshTokenResponseCopyWith<$Res>(_self.refreshToken, (value) {
      return _then(_self.copyWith(refreshToken: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _TokensResponse implements TokensResponse {
  _TokensResponse({required this.accessToken, required this.refreshToken});
  factory _TokensResponse.fromJson(Map<String, dynamic> json) =>
      _$TokensResponseFromJson(json);

  @override
  final AccessTokenResponse accessToken;
  @override
  final RefreshTokenResponse refreshToken;

  /// Create a copy of TokensResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TokensResponseCopyWith<_TokensResponse> get copyWith =>
      __$TokensResponseCopyWithImpl<_TokensResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TokensResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokensResponse &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @override
  String toString() {
    return 'TokensResponse(accessToken: $accessToken, refreshToken: $refreshToken)';
  }
}

/// @nodoc
abstract mixin class _$TokensResponseCopyWith<$Res>
    implements $TokensResponseCopyWith<$Res> {
  factory _$TokensResponseCopyWith(
          _TokensResponse value, $Res Function(_TokensResponse) _then) =
      __$TokensResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AccessTokenResponse accessToken, RefreshTokenResponse refreshToken});

  @override
  $AccessTokenResponseCopyWith<$Res> get accessToken;
  @override
  $RefreshTokenResponseCopyWith<$Res> get refreshToken;
}

/// @nodoc
class __$TokensResponseCopyWithImpl<$Res>
    implements _$TokensResponseCopyWith<$Res> {
  __$TokensResponseCopyWithImpl(this._self, this._then);

  final _TokensResponse _self;
  final $Res Function(_TokensResponse) _then;

  /// Create a copy of TokensResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_TokensResponse(
      accessToken: null == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as AccessTokenResponse,
      refreshToken: null == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as RefreshTokenResponse,
    ));
  }

  /// Create a copy of TokensResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccessTokenResponseCopyWith<$Res> get accessToken {
    return $AccessTokenResponseCopyWith<$Res>(_self.accessToken, (value) {
      return _then(_self.copyWith(accessToken: value));
    });
  }

  /// Create a copy of TokensResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefreshTokenResponseCopyWith<$Res> get refreshToken {
    return $RefreshTokenResponseCopyWith<$Res>(_self.refreshToken, (value) {
      return _then(_self.copyWith(refreshToken: value));
    });
  }
}

// dart format on
