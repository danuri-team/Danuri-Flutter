// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_success_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckSuccessResponse {
  bool get isSuccess;
  String get massage;

  /// Create a copy of CheckSuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CheckSuccessResponseCopyWith<CheckSuccessResponse> get copyWith =>
      _$CheckSuccessResponseCopyWithImpl<CheckSuccessResponse>(
          this as CheckSuccessResponse, _$identity);

  /// Serializes this CheckSuccessResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckSuccessResponse &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.massage, massage) || other.massage == massage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isSuccess, massage);

  @override
  String toString() {
    return 'CheckSuccessResponse(isSuccess: $isSuccess, massage: $massage)';
  }
}

/// @nodoc
abstract mixin class $CheckSuccessResponseCopyWith<$Res> {
  factory $CheckSuccessResponseCopyWith(CheckSuccessResponse value,
          $Res Function(CheckSuccessResponse) _then) =
      _$CheckSuccessResponseCopyWithImpl;
  @useResult
  $Res call({bool isSuccess, String massage});
}

/// @nodoc
class _$CheckSuccessResponseCopyWithImpl<$Res>
    implements $CheckSuccessResponseCopyWith<$Res> {
  _$CheckSuccessResponseCopyWithImpl(this._self, this._then);

  final CheckSuccessResponse _self;
  final $Res Function(CheckSuccessResponse) _then;

  /// Create a copy of CheckSuccessResponse
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
class _CheckSuccessResponse implements CheckSuccessResponse {
  _CheckSuccessResponse({required this.isSuccess, required this.massage});
  factory _CheckSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckSuccessResponseFromJson(json);

  @override
  final bool isSuccess;
  @override
  final String massage;

  /// Create a copy of CheckSuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CheckSuccessResponseCopyWith<_CheckSuccessResponse> get copyWith =>
      __$CheckSuccessResponseCopyWithImpl<_CheckSuccessResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CheckSuccessResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckSuccessResponse &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.massage, massage) || other.massage == massage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isSuccess, massage);

  @override
  String toString() {
    return 'CheckSuccessResponse(isSuccess: $isSuccess, massage: $massage)';
  }
}

/// @nodoc
abstract mixin class _$CheckSuccessResponseCopyWith<$Res>
    implements $CheckSuccessResponseCopyWith<$Res> {
  factory _$CheckSuccessResponseCopyWith(_CheckSuccessResponse value,
          $Res Function(_CheckSuccessResponse) _then) =
      __$CheckSuccessResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool isSuccess, String massage});
}

/// @nodoc
class __$CheckSuccessResponseCopyWithImpl<$Res>
    implements _$CheckSuccessResponseCopyWith<$Res> {
  __$CheckSuccessResponseCopyWithImpl(this._self, this._then);

  final _CheckSuccessResponse _self;
  final $Res Function(_CheckSuccessResponse) _then;

  /// Create a copy of CheckSuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isSuccess = null,
    Object? massage = null,
  }) {
    return _then(_CheckSuccessResponse(
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
