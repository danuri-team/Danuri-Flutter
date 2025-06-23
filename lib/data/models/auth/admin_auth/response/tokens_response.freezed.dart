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
  AccessTokenResponse get access_token;
  RefreshTokenResponse get refresh_token;

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
            (identical(other.access_token, access_token) ||
                other.access_token == access_token) &&
            (identical(other.refresh_token, refresh_token) ||
                other.refresh_token == refresh_token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, access_token, refresh_token);

  @override
  String toString() {
    return 'TokensResponse(access_token: $access_token, refresh_token: $refresh_token)';
  }
}

/// @nodoc
abstract mixin class $TokensResponseCopyWith<$Res> {
  factory $TokensResponseCopyWith(
          TokensResponse value, $Res Function(TokensResponse) _then) =
      _$TokensResponseCopyWithImpl;
  @useResult
  $Res call(
      {AccessTokenResponse access_token, RefreshTokenResponse refresh_token});

  $AccessTokenResponseCopyWith<$Res> get access_token;
  $RefreshTokenResponseCopyWith<$Res> get refresh_token;
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
    Object? access_token = null,
    Object? refresh_token = null,
  }) {
    return _then(_self.copyWith(
      access_token: null == access_token
          ? _self.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as AccessTokenResponse,
      refresh_token: null == refresh_token
          ? _self.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as RefreshTokenResponse,
    ));
  }

  /// Create a copy of TokensResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccessTokenResponseCopyWith<$Res> get access_token {
    return $AccessTokenResponseCopyWith<$Res>(_self.access_token, (value) {
      return _then(_self.copyWith(access_token: value));
    });
  }

  /// Create a copy of TokensResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefreshTokenResponseCopyWith<$Res> get refresh_token {
    return $RefreshTokenResponseCopyWith<$Res>(_self.refresh_token, (value) {
      return _then(_self.copyWith(refresh_token: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _TokensResponse implements TokensResponse {
  _TokensResponse({required this.access_token, required this.refresh_token});
  factory _TokensResponse.fromJson(Map<String, dynamic> json) =>
      _$TokensResponseFromJson(json);

  @override
  final AccessTokenResponse access_token;
  @override
  final RefreshTokenResponse refresh_token;

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
            (identical(other.access_token, access_token) ||
                other.access_token == access_token) &&
            (identical(other.refresh_token, refresh_token) ||
                other.refresh_token == refresh_token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, access_token, refresh_token);

  @override
  String toString() {
    return 'TokensResponse(access_token: $access_token, refresh_token: $refresh_token)';
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
      {AccessTokenResponse access_token, RefreshTokenResponse refresh_token});

  @override
  $AccessTokenResponseCopyWith<$Res> get access_token;
  @override
  $RefreshTokenResponseCopyWith<$Res> get refresh_token;
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
    Object? access_token = null,
    Object? refresh_token = null,
  }) {
    return _then(_TokensResponse(
      access_token: null == access_token
          ? _self.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as AccessTokenResponse,
      refresh_token: null == refresh_token
          ? _self.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as RefreshTokenResponse,
    ));
  }

  /// Create a copy of TokensResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccessTokenResponseCopyWith<$Res> get access_token {
    return $AccessTokenResponseCopyWith<$Res>(_self.access_token, (value) {
      return _then(_self.copyWith(access_token: value));
    });
  }

  /// Create a copy of TokensResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefreshTokenResponseCopyWith<$Res> get refresh_token {
    return $RefreshTokenResponseCopyWith<$Res>(_self.refresh_token, (value) {
      return _then(_self.copyWith(refresh_token: value));
    });
  }
}

// dart format on
