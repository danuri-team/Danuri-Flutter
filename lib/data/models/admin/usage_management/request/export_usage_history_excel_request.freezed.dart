// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'export_usage_history_excel_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExportUsageHistoryExcelRequest {
  String get startDate;
  String get endDate;
  String? get spaceId;
  String? get userId;

  /// Create a copy of ExportUsageHistoryExcelRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExportUsageHistoryExcelRequestCopyWith<ExportUsageHistoryExcelRequest>
      get copyWith => _$ExportUsageHistoryExcelRequestCopyWithImpl<
              ExportUsageHistoryExcelRequest>(
          this as ExportUsageHistoryExcelRequest, _$identity);

  /// Serializes this ExportUsageHistoryExcelRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExportUsageHistoryExcelRequest &&
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
    return 'ExportUsageHistoryExcelRequest(startDate: $startDate, endDate: $endDate, spaceId: $spaceId, userId: $userId)';
  }
}

/// @nodoc
abstract mixin class $ExportUsageHistoryExcelRequestCopyWith<$Res> {
  factory $ExportUsageHistoryExcelRequestCopyWith(
          ExportUsageHistoryExcelRequest value,
          $Res Function(ExportUsageHistoryExcelRequest) _then) =
      _$ExportUsageHistoryExcelRequestCopyWithImpl;
  @useResult
  $Res call(
      {String startDate, String endDate, String? spaceId, String? userId});
}

/// @nodoc
class _$ExportUsageHistoryExcelRequestCopyWithImpl<$Res>
    implements $ExportUsageHistoryExcelRequestCopyWith<$Res> {
  _$ExportUsageHistoryExcelRequestCopyWithImpl(this._self, this._then);

  final ExportUsageHistoryExcelRequest _self;
  final $Res Function(ExportUsageHistoryExcelRequest) _then;

  /// Create a copy of ExportUsageHistoryExcelRequest
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
class _ExportUsageHistoryExcelRequest
    implements ExportUsageHistoryExcelRequest {
  _ExportUsageHistoryExcelRequest(
      {required this.startDate,
      required this.endDate,
      this.spaceId,
      this.userId});
  factory _ExportUsageHistoryExcelRequest.fromJson(Map<String, dynamic> json) =>
      _$ExportUsageHistoryExcelRequestFromJson(json);

  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final String? spaceId;
  @override
  final String? userId;

  /// Create a copy of ExportUsageHistoryExcelRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExportUsageHistoryExcelRequestCopyWith<_ExportUsageHistoryExcelRequest>
      get copyWith => __$ExportUsageHistoryExcelRequestCopyWithImpl<
          _ExportUsageHistoryExcelRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExportUsageHistoryExcelRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExportUsageHistoryExcelRequest &&
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
    return 'ExportUsageHistoryExcelRequest(startDate: $startDate, endDate: $endDate, spaceId: $spaceId, userId: $userId)';
  }
}

/// @nodoc
abstract mixin class _$ExportUsageHistoryExcelRequestCopyWith<$Res>
    implements $ExportUsageHistoryExcelRequestCopyWith<$Res> {
  factory _$ExportUsageHistoryExcelRequestCopyWith(
          _ExportUsageHistoryExcelRequest value,
          $Res Function(_ExportUsageHistoryExcelRequest) _then) =
      __$ExportUsageHistoryExcelRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String startDate, String endDate, String? spaceId, String? userId});
}

/// @nodoc
class __$ExportUsageHistoryExcelRequestCopyWithImpl<$Res>
    implements _$ExportUsageHistoryExcelRequestCopyWith<$Res> {
  __$ExportUsageHistoryExcelRequestCopyWithImpl(this._self, this._then);

  final _ExportUsageHistoryExcelRequest _self;
  final $Res Function(_ExportUsageHistoryExcelRequest) _then;

  /// Create a copy of ExportUsageHistoryExcelRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? spaceId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_ExportUsageHistoryExcelRequest(
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
