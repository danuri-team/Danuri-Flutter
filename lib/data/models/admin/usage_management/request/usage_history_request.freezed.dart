// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usage_history_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UsageHistoryRequest {
  String get startDate;
  String get endDate;
  String? get spaceId;
  String? get userId;

  /// Create a copy of UsageHistoryRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UsageHistoryRequestCopyWith<UsageHistoryRequest> get copyWith =>
      _$UsageHistoryRequestCopyWithImpl<UsageHistoryRequest>(
          this as UsageHistoryRequest, _$identity);

  /// Serializes this UsageHistoryRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UsageHistoryRequest &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.spaceId, spaceId) || other.spaceId == spaceId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, startDate, endDate, spaceId, userId);

  @override
  String toString() {
    return 'UsageHistoryRequest(startDate: $startDate, endDate: $endDate, spaceId: $spaceId, userId: $userId)';
  }
}

/// @nodoc
abstract mixin class $UsageHistoryRequestCopyWith<$Res> {
  factory $UsageHistoryRequestCopyWith(
          UsageHistoryRequest value, $Res Function(UsageHistoryRequest) _then) =
      _$UsageHistoryRequestCopyWithImpl;
  @useResult
  $Res call(
      {String startDate, String endDate, String? spaceId, String? userId});
}

/// @nodoc
class _$UsageHistoryRequestCopyWithImpl<$Res>
    implements $UsageHistoryRequestCopyWith<$Res> {
  _$UsageHistoryRequestCopyWithImpl(this._self, this._then);

  final UsageHistoryRequest _self;
  final $Res Function(UsageHistoryRequest) _then;

  /// Create a copy of UsageHistoryRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? spaceId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_self.copyWith(
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      spaceId: freezed == spaceId
          ? _self.spaceId
          : spaceId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UsageHistoryRequest implements UsageHistoryRequest {
  _UsageHistoryRequest(
      {required this.startDate,
      required this.endDate,
      this.spaceId,
      this.userId});
  factory _UsageHistoryRequest.fromJson(Map<String, dynamic> json) =>
      _$UsageHistoryRequestFromJson(json);

  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final String? spaceId;
  @override
  final String? userId;

  /// Create a copy of UsageHistoryRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UsageHistoryRequestCopyWith<_UsageHistoryRequest> get copyWith =>
      __$UsageHistoryRequestCopyWithImpl<_UsageHistoryRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UsageHistoryRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsageHistoryRequest &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.spaceId, spaceId) || other.spaceId == spaceId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, startDate, endDate, spaceId, userId);

  @override
  String toString() {
    return 'UsageHistoryRequest(startDate: $startDate, endDate: $endDate, spaceId: $spaceId, userId: $userId)';
  }
}

/// @nodoc
abstract mixin class _$UsageHistoryRequestCopyWith<$Res>
    implements $UsageHistoryRequestCopyWith<$Res> {
  factory _$UsageHistoryRequestCopyWith(_UsageHistoryRequest value,
          $Res Function(_UsageHistoryRequest) _then) =
      __$UsageHistoryRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String startDate, String endDate, String? spaceId, String? userId});
}

/// @nodoc
class __$UsageHistoryRequestCopyWithImpl<$Res>
    implements _$UsageHistoryRequestCopyWith<$Res> {
  __$UsageHistoryRequestCopyWithImpl(this._self, this._then);

  final _UsageHistoryRequest _self;
  final $Res Function(_UsageHistoryRequest) _then;

  /// Create a copy of UsageHistoryRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? spaceId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_UsageHistoryRequest(
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      spaceId: freezed == spaceId
          ? _self.spaceId
          : spaceId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
