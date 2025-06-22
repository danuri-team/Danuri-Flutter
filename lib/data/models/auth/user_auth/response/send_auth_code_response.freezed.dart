// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_auth_code_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SendAuthCodeResponse {
  bool get isSuccess;
  String get massage;

  /// Create a copy of SendAuthCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SendAuthCodeResponseCopyWith<SendAuthCodeResponse> get copyWith =>
      _$SendAuthCodeResponseCopyWithImpl<SendAuthCodeResponse>(
          this as SendAuthCodeResponse, _$identity);

  /// Serializes this SendAuthCodeResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendAuthCodeResponse &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.massage, massage) || other.massage == massage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isSuccess, massage);

  @override
  String toString() {
    return 'SendAuthCodeResponse(isSuccess: $isSuccess, massage: $massage)';
  }
}

/// @nodoc
abstract mixin class $SendAuthCodeResponseCopyWith<$Res> {
  factory $SendAuthCodeResponseCopyWith(SendAuthCodeResponse value,
          $Res Function(SendAuthCodeResponse) _then) =
      _$SendAuthCodeResponseCopyWithImpl;
  @useResult
  $Res call({bool isSuccess, String massage});
}

/// @nodoc
class _$SendAuthCodeResponseCopyWithImpl<$Res>
    implements $SendAuthCodeResponseCopyWith<$Res> {
  _$SendAuthCodeResponseCopyWithImpl(this._self, this._then);

  final SendAuthCodeResponse _self;
  final $Res Function(SendAuthCodeResponse) _then;

  /// Create a copy of SendAuthCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? massage = null,
  }) {
    return _then(_self.copyWith(
      isSuccess: null == isSuccess
          ? _self.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      massage: null == massage
          ? _self.massage
          : massage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SendAuthCodeResponse implements SendAuthCodeResponse {
  _SendAuthCodeResponse({required this.isSuccess, required this.massage});
  factory _SendAuthCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$SendAuthCodeResponseFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String massage;

  /// Create a copy of SendAuthCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SendAuthCodeResponseCopyWith<_SendAuthCodeResponse> get copyWith =>
      __$SendAuthCodeResponseCopyWithImpl<_SendAuthCodeResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SendAuthCodeResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendAuthCodeResponse &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.massage, massage) || other.massage == massage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isSuccess, massage);

  @override
  String toString() {
    return 'SendAuthCodeResponse(isSuccess: $isSuccess, massage: $massage)';
  }
}

/// @nodoc
abstract mixin class _$SendAuthCodeResponseCopyWith<$Res>
    implements $SendAuthCodeResponseCopyWith<$Res> {
  factory _$SendAuthCodeResponseCopyWith(_SendAuthCodeResponse value,
          $Res Function(_SendAuthCodeResponse) _then) =
      __$SendAuthCodeResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool isSuccess, String massage});
}

/// @nodoc
class __$SendAuthCodeResponseCopyWithImpl<$Res>
    implements _$SendAuthCodeResponseCopyWith<$Res> {
  __$SendAuthCodeResponseCopyWithImpl(this._self, this._then);

  final _SendAuthCodeResponse _self;
  final $Res Function(_SendAuthCodeResponse) _then;

  /// Create a copy of SendAuthCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isSuccess = null,
    Object? massage = null,
  }) {
    return _then(_SendAuthCodeResponse(
      isSuccess: null == isSuccess
          ? _self.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      massage: null == massage
          ? _self.massage
          : massage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
