// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usage_space_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UsageSpaceResponse {
  bool get isUsingSpace;
  SpaceUsageInfoResponse get spaceUsageInfo;

  /// Create a copy of UsageSpaceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UsageSpaceResponseCopyWith<UsageSpaceResponse> get copyWith =>
      _$UsageSpaceResponseCopyWithImpl<UsageSpaceResponse>(
          this as UsageSpaceResponse, _$identity);

  /// Serializes this UsageSpaceResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UsageSpaceResponse &&
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
    return 'UsageSpaceResponse(isUsingSpace: $isUsingSpace, spaceUsageInfo: $spaceUsageInfo)';
  }
}

/// @nodoc
abstract mixin class $UsageSpaceResponseCopyWith<$Res> {
  factory $UsageSpaceResponseCopyWith(
          UsageSpaceResponse value, $Res Function(UsageSpaceResponse) _then) =
      _$UsageSpaceResponseCopyWithImpl;
  @useResult
  $Res call({bool isUsingSpace, SpaceUsageInfoResponse spaceUsageInfo});

  $SpaceUsageInfoResponseCopyWith<$Res> get spaceUsageInfo;
}

/// @nodoc
class _$UsageSpaceResponseCopyWithImpl<$Res>
    implements $UsageSpaceResponseCopyWith<$Res> {
  _$UsageSpaceResponseCopyWithImpl(this._self, this._then);

  final UsageSpaceResponse _self;
  final $Res Function(UsageSpaceResponse) _then;

  /// Create a copy of UsageSpaceResponse
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

  /// Create a copy of UsageSpaceResponse
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
class _UsageSpaceResponse implements UsageSpaceResponse {
  _UsageSpaceResponse(
      {required this.isUsingSpace, required this.spaceUsageInfo});
  factory _UsageSpaceResponse.fromJson(Map<String, dynamic> json) =>
      _$UsageSpaceResponseFromJson(json);

  @override
  final bool isUsingSpace;
  @override
  final SpaceUsageInfoResponse spaceUsageInfo;

  /// Create a copy of UsageSpaceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UsageSpaceResponseCopyWith<_UsageSpaceResponse> get copyWith =>
      __$UsageSpaceResponseCopyWithImpl<_UsageSpaceResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UsageSpaceResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsageSpaceResponse &&
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
    return 'UsageSpaceResponse(isUsingSpace: $isUsingSpace, spaceUsageInfo: $spaceUsageInfo)';
  }
}

/// @nodoc
abstract mixin class _$UsageSpaceResponseCopyWith<$Res>
    implements $UsageSpaceResponseCopyWith<$Res> {
  factory _$UsageSpaceResponseCopyWith(
          _UsageSpaceResponse value, $Res Function(_UsageSpaceResponse) _then) =
      __$UsageSpaceResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool isUsingSpace, SpaceUsageInfoResponse spaceUsageInfo});

  @override
  $SpaceUsageInfoResponseCopyWith<$Res> get spaceUsageInfo;
}

/// @nodoc
class __$UsageSpaceResponseCopyWithImpl<$Res>
    implements _$UsageSpaceResponseCopyWith<$Res> {
  __$UsageSpaceResponseCopyWithImpl(this._self, this._then);

  final _UsageSpaceResponse _self;
  final $Res Function(_UsageSpaceResponse) _then;

  /// Create a copy of UsageSpaceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isUsingSpace = null,
    Object? spaceUsageInfo = null,
  }) {
    return _then(_UsageSpaceResponse(
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

  /// Create a copy of UsageSpaceResponse
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
