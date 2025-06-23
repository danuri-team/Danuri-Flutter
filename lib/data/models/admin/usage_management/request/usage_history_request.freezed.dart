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
  String get start_date;
  String get end_date;
  String? get space_id;
  String? get user_id;

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
            (identical(other.start_date, start_date) ||
                other.start_date == start_date) &&
            (identical(other.end_date, end_date) ||
                other.end_date == end_date) &&
            (identical(other.space_id, space_id) ||
                other.space_id == space_id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, start_date, end_date, space_id, user_id);

  @override
  String toString() {
    return 'UsageHistoryRequest(start_date: $start_date, end_date: $end_date, space_id: $space_id, user_id: $user_id)';
  }
}

/// @nodoc
abstract mixin class $UsageHistoryRequestCopyWith<$Res> {
  factory $UsageHistoryRequestCopyWith(
          UsageHistoryRequest value, $Res Function(UsageHistoryRequest) _then) =
      _$UsageHistoryRequestCopyWithImpl;
  @useResult
  $Res call(
      {String start_date, String end_date, String? space_id, String? user_id});
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
    Object? start_date = null,
    Object? end_date = null,
    Object? space_id = freezed,
    Object? user_id = freezed,
  }) {
    return _then(_self.copyWith(
      start_date: null == start_date
          ? _self.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String,
      end_date: null == end_date
          ? _self.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String,
      space_id: freezed == space_id
          ? _self.space_id
          : space_id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: freezed == user_id
          ? _self.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UsageHistoryRequest implements UsageHistoryRequest {
  _UsageHistoryRequest(
      {required this.start_date,
      required this.end_date,
      this.space_id,
      this.user_id});
  factory _UsageHistoryRequest.fromJson(Map<String, dynamic> json) =>
      _$UsageHistoryRequestFromJson(json);

  @override
  final String start_date;
  @override
  final String end_date;
  @override
  final String? space_id;
  @override
  final String? user_id;

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
            (identical(other.start_date, start_date) ||
                other.start_date == start_date) &&
            (identical(other.end_date, end_date) ||
                other.end_date == end_date) &&
            (identical(other.space_id, space_id) ||
                other.space_id == space_id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, start_date, end_date, space_id, user_id);

  @override
  String toString() {
    return 'UsageHistoryRequest(start_date: $start_date, end_date: $end_date, space_id: $space_id, user_id: $user_id)';
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
      {String start_date, String end_date, String? space_id, String? user_id});
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
    Object? start_date = null,
    Object? end_date = null,
    Object? space_id = freezed,
    Object? user_id = freezed,
  }) {
    return _then(_UsageHistoryRequest(
      start_date: null == start_date
          ? _self.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String,
      end_date: null == end_date
          ? _self.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String,
      space_id: freezed == space_id
          ? _self.space_id
          : space_id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: freezed == user_id
          ? _self.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
