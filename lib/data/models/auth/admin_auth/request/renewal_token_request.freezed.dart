// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'renewal_token_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RenewalTokenRequest {
  String get refreshToken;

  /// Create a copy of RenewalTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RenewalTokenRequestCopyWith<RenewalTokenRequest> get copyWith =>
      _$RenewalTokenRequestCopyWithImpl<RenewalTokenRequest>(
          this as RenewalTokenRequest, _$identity);

  /// Serializes this RenewalTokenRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RenewalTokenRequest &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  @override
  String toString() {
    return 'RenewalTokenRequest(refreshToken: $refreshToken)';
  }
}

/// @nodoc
abstract mixin class $RenewalTokenRequestCopyWith<$Res> {
  factory $RenewalTokenRequestCopyWith(
          RenewalTokenRequest value, $Res Function(RenewalTokenRequest) _then) =
      _$RenewalTokenRequestCopyWithImpl;
  @useResult
  $Res call({String refreshToken});
}

/// @nodoc
class _$RenewalTokenRequestCopyWithImpl<$Res>
    implements $RenewalTokenRequestCopyWith<$Res> {
  _$RenewalTokenRequestCopyWithImpl(this._self, this._then);

  final RenewalTokenRequest _self;
  final $Res Function(RenewalTokenRequest) _then;

  /// Create a copy of RenewalTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_self.copyWith(
      refreshToken: null == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RenewalTokenRequest implements RenewalTokenRequest {
  _RenewalTokenRequest({required this.refreshToken});
  factory _RenewalTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$RenewalTokenRequestFromJson(json);

  @override
  final String refreshToken;

  /// Create a copy of RenewalTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RenewalTokenRequestCopyWith<_RenewalTokenRequest> get copyWith =>
      __$RenewalTokenRequestCopyWithImpl<_RenewalTokenRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RenewalTokenRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RenewalTokenRequest &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  @override
  String toString() {
    return 'RenewalTokenRequest(refreshToken: $refreshToken)';
  }
}

/// @nodoc
abstract mixin class _$RenewalTokenRequestCopyWith<$Res>
    implements $RenewalTokenRequestCopyWith<$Res> {
  factory _$RenewalTokenRequestCopyWith(_RenewalTokenRequest value,
          $Res Function(_RenewalTokenRequest) _then) =
      __$RenewalTokenRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String refreshToken});
}

/// @nodoc
class __$RenewalTokenRequestCopyWithImpl<$Res>
    implements _$RenewalTokenRequestCopyWith<$Res> {
  __$RenewalTokenRequestCopyWithImpl(this._self, this._then);

  final _RenewalTokenRequest _self;
  final $Res Function(_RenewalTokenRequest) _then;

  /// Create a copy of RenewalTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? refreshToken = null,
  }) {
    return _then(_RenewalTokenRequest(
      refreshToken: null == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
