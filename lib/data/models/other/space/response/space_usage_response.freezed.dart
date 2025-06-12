// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'space_usage_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpaceUsageResponse {
  bool get isUsingSpace;
  SpaceUsageInfoResponse get spaceUsageInfo;

  /// Create a copy of SpaceUsageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpaceUsageResponseCopyWith<SpaceUsageResponse> get copyWith =>
      _$SpaceUsageResponseCopyWithImpl<SpaceUsageResponse>(
          this as SpaceUsageResponse, _$identity);

  /// Serializes this SpaceUsageResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpaceUsageResponse &&
            (identical(other.isUsingSpace, isUsingSpace) ||
                other.isUsingSpace == isUsingSpace) &&
            (identical(other.spaceUsageInfo, spaceUsageInfo) ||
                other.spaceUsageInfo == spaceUsageInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isUsingSpace, spaceUsageInfo);

  @override
  String toString() {
    return 'SpaceUsageResponse(isUsingSpace: $isUsingSpace, spaceUsageInfo: $spaceUsageInfo)';
  }
}

/// @nodoc
abstract mixin class $SpaceUsageResponseCopyWith<$Res> {
  factory $SpaceUsageResponseCopyWith(
          SpaceUsageResponse value, $Res Function(SpaceUsageResponse) _then) =
      _$SpaceUsageResponseCopyWithImpl;
  @useResult
  $Res call({bool isUsingSpace, SpaceUsageInfoResponse spaceUsageInfo});

  $SpaceUsageInfoResponseCopyWith<$Res> get spaceUsageInfo;
}

/// @nodoc
class _$SpaceUsageResponseCopyWithImpl<$Res>
    implements $SpaceUsageResponseCopyWith<$Res> {
  _$SpaceUsageResponseCopyWithImpl(this._self, this._then);

  final SpaceUsageResponse _self;
  final $Res Function(SpaceUsageResponse) _then;

  /// Create a copy of SpaceUsageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUsingSpace = null,
    Object? spaceUsageInfo = null,
  }) {
    return _then(_self.copyWith(
      isUsingSpace: null == isUsingSpace
          ? _self.isUsingSpace
          : isUsingSpace // ignore: cast_nullable_to_non_nullable
              as bool,
      spaceUsageInfo: null == spaceUsageInfo
          ? _self.spaceUsageInfo
          : spaceUsageInfo // ignore: cast_nullable_to_non_nullable
              as SpaceUsageInfoResponse,
    ));
  }

  /// Create a copy of SpaceUsageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpaceUsageInfoResponseCopyWith<$Res> get spaceUsageInfo {
    return $SpaceUsageInfoResponseCopyWith<$Res>(_self.spaceUsageInfo, (value) {
      return _then(_self.copyWith(spaceUsageInfo: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _SpaceUsageResponse implements SpaceUsageResponse {
  _SpaceUsageResponse(
      {required this.isUsingSpace, required this.spaceUsageInfo});
  factory _SpaceUsageResponse.fromJson(Map<String, dynamic> json) =>
      _$SpaceUsageResponseFromJson(json);

  @override
  final bool isUsingSpace;
  @override
  final SpaceUsageInfoResponse spaceUsageInfo;

  /// Create a copy of SpaceUsageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpaceUsageResponseCopyWith<_SpaceUsageResponse> get copyWith =>
      __$SpaceUsageResponseCopyWithImpl<_SpaceUsageResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SpaceUsageResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpaceUsageResponse &&
            (identical(other.isUsingSpace, isUsingSpace) ||
                other.isUsingSpace == isUsingSpace) &&
            (identical(other.spaceUsageInfo, spaceUsageInfo) ||
                other.spaceUsageInfo == spaceUsageInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isUsingSpace, spaceUsageInfo);

  @override
  String toString() {
    return 'SpaceUsageResponse(isUsingSpace: $isUsingSpace, spaceUsageInfo: $spaceUsageInfo)';
  }
}

/// @nodoc
abstract mixin class _$SpaceUsageResponseCopyWith<$Res>
    implements $SpaceUsageResponseCopyWith<$Res> {
  factory _$SpaceUsageResponseCopyWith(
          _SpaceUsageResponse value, $Res Function(_SpaceUsageResponse) _then) =
      __$SpaceUsageResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool isUsingSpace, SpaceUsageInfoResponse spaceUsageInfo});

  @override
  $SpaceUsageInfoResponseCopyWith<$Res> get spaceUsageInfo;
}

/// @nodoc
class __$SpaceUsageResponseCopyWithImpl<$Res>
    implements _$SpaceUsageResponseCopyWith<$Res> {
  __$SpaceUsageResponseCopyWithImpl(this._self, this._then);

  final _SpaceUsageResponse _self;
  final $Res Function(_SpaceUsageResponse) _then;

  /// Create a copy of SpaceUsageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isUsingSpace = null,
    Object? spaceUsageInfo = null,
  }) {
    return _then(_SpaceUsageResponse(
      isUsingSpace: null == isUsingSpace
          ? _self.isUsingSpace
          : isUsingSpace // ignore: cast_nullable_to_non_nullable
              as bool,
      spaceUsageInfo: null == spaceUsageInfo
          ? _self.spaceUsageInfo
          : spaceUsageInfo // ignore: cast_nullable_to_non_nullable
              as SpaceUsageInfoResponse,
    ));
  }

  /// Create a copy of SpaceUsageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpaceUsageInfoResponseCopyWith<$Res> get spaceUsageInfo {
    return $SpaceUsageInfoResponseCopyWith<$Res>(_self.spaceUsageInfo, (value) {
      return _then(_self.copyWith(spaceUsageInfo: value));
    });
  }
}

// dart format on
