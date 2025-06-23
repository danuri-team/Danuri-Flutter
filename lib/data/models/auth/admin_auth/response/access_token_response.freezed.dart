// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access_token_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccessTokenResponse {
  String get token;
  int get expired_at;

  /// Create a copy of AccessTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AccessTokenResponseCopyWith<AccessTokenResponse> get copyWith =>
      _$AccessTokenResponseCopyWithImpl<AccessTokenResponse>(
          this as AccessTokenResponse, _$identity);

  /// Serializes this AccessTokenResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AccessTokenResponse &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.expired_at, expired_at) ||
                other.expired_at == expired_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, expired_at);

  @override
  String toString() {
    return 'AccessTokenResponse(token: $token, expired_at: $expired_at)';
  }
}

/// @nodoc
abstract mixin class $AccessTokenResponseCopyWith<$Res> {
  factory $AccessTokenResponseCopyWith(
          AccessTokenResponse value, $Res Function(AccessTokenResponse) _then) =
      _$AccessTokenResponseCopyWithImpl;
  @useResult
  $Res call({String token, int expired_at});
}

/// @nodoc
class _$AccessTokenResponseCopyWithImpl<$Res>
    implements $AccessTokenResponseCopyWith<$Res> {
  _$AccessTokenResponseCopyWithImpl(this._self, this._then);

  final AccessTokenResponse _self;
  final $Res Function(AccessTokenResponse) _then;

  /// Create a copy of AccessTokenResponse
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
class _AccessTokenResponse implements AccessTokenResponse {
  _AccessTokenResponse({required this.token, required this.expired_at});
  factory _AccessTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenResponseFromJson(json);

  @override
  final String token;
  @override
  final int expired_at;

  /// Create a copy of AccessTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AccessTokenResponseCopyWith<_AccessTokenResponse> get copyWith =>
      __$AccessTokenResponseCopyWithImpl<_AccessTokenResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AccessTokenResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccessTokenResponse &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.expired_at, expired_at) ||
                other.expired_at == expired_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, expired_at);

  @override
  String toString() {
    return 'AccessTokenResponse(token: $token, expired_at: $expired_at)';
  }
}

/// @nodoc
abstract mixin class _$AccessTokenResponseCopyWith<$Res>
    implements $AccessTokenResponseCopyWith<$Res> {
  factory _$AccessTokenResponseCopyWith(_AccessTokenResponse value,
          $Res Function(_AccessTokenResponse) _then) =
      __$AccessTokenResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String token, int expired_at});
}

/// @nodoc
class __$AccessTokenResponseCopyWithImpl<$Res>
    implements _$AccessTokenResponseCopyWith<$Res> {
  __$AccessTokenResponseCopyWithImpl(this._self, this._then);

  final _AccessTokenResponse _self;
  final $Res Function(_AccessTokenResponse) _then;

  /// Create a copy of AccessTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? token = null,
    Object? expired_at = null,
  }) {
    return _then(_AccessTokenResponse(
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
