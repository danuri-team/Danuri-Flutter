// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usage_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UsageHistoryResponse {
  String get id;
  String get user_id;
  String get user_name;
  String get user_phone;
  String get space_id;
  String get space_name;
  String get start_at;
  String get end_at;
  int get rental_count;

  /// Create a copy of UsageHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UsageHistoryResponseCopyWith<UsageHistoryResponse> get copyWith =>
      _$UsageHistoryResponseCopyWithImpl<UsageHistoryResponse>(
          this as UsageHistoryResponse, _$identity);

  /// Serializes this UsageHistoryResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UsageHistoryResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.user_name, user_name) ||
                other.user_name == user_name) &&
            (identical(other.user_phone, user_phone) ||
                other.user_phone == user_phone) &&
            (identical(other.space_id, space_id) ||
                other.space_id == space_id) &&
            (identical(other.space_name, space_name) ||
                other.space_name == space_name) &&
            (identical(other.start_at, start_at) ||
                other.start_at == start_at) &&
            (identical(other.end_at, end_at) || other.end_at == end_at) &&
            (identical(other.rental_count, rental_count) ||
                other.rental_count == rental_count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, user_id, user_name,
      user_phone, space_id, space_name, start_at, end_at, rental_count);

  @override
  String toString() {
    return 'UsageHistoryResponse(id: $id, user_id: $user_id, user_name: $user_name, user_phone: $user_phone, space_id: $space_id, space_name: $space_name, start_at: $start_at, end_at: $end_at, rental_count: $rental_count)';
  }
}

/// @nodoc
abstract mixin class $UsageHistoryResponseCopyWith<$Res> {
  factory $UsageHistoryResponseCopyWith(UsageHistoryResponse value,
          $Res Function(UsageHistoryResponse) _then) =
      _$UsageHistoryResponseCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String user_id,
      String user_name,
      String user_phone,
      String space_id,
      String space_name,
      String start_at,
      String end_at,
      int rental_count});
}

/// @nodoc
class _$UsageHistoryResponseCopyWithImpl<$Res>
    implements $UsageHistoryResponseCopyWith<$Res> {
  _$UsageHistoryResponseCopyWithImpl(this._self, this._then);

  final UsageHistoryResponse _self;
  final $Res Function(UsageHistoryResponse) _then;

  /// Create a copy of UsageHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_id = null,
    Object? user_name = null,
    Object? user_phone = null,
    Object? space_id = null,
    Object? space_name = null,
    Object? start_at = null,
    Object? end_at = null,
    Object? rental_count = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _self.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      user_name: null == user_name
          ? _self.user_name
          : user_name // ignore: cast_nullable_to_non_nullable
              as String,
      user_phone: null == user_phone
          ? _self.user_phone
          : user_phone // ignore: cast_nullable_to_non_nullable
              as String,
      space_id: null == space_id
          ? _self.space_id
          : space_id // ignore: cast_nullable_to_non_nullable
              as String,
      space_name: null == space_name
          ? _self.space_name
          : space_name // ignore: cast_nullable_to_non_nullable
              as String,
      start_at: null == start_at
          ? _self.start_at
          : start_at // ignore: cast_nullable_to_non_nullable
              as String,
      end_at: null == end_at
          ? _self.end_at
          : end_at // ignore: cast_nullable_to_non_nullable
              as String,
      rental_count: null == rental_count
          ? _self.rental_count
          : rental_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UsageHistoryResponse implements UsageHistoryResponse {
  _UsageHistoryResponse(
      {required this.id,
      required this.user_id,
      required this.user_name,
      required this.user_phone,
      required this.space_id,
      required this.space_name,
      required this.start_at,
      required this.end_at,
      required this.rental_count});
  factory _UsageHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$UsageHistoryResponseFromJson(json);

  @override
  final String id;
  @override
  final String user_id;
  @override
  final String user_name;
  @override
  final String user_phone;
  @override
  final String space_id;
  @override
  final String space_name;
  @override
  final String start_at;
  @override
  final String end_at;
  @override
  final int rental_count;

  /// Create a copy of UsageHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UsageHistoryResponseCopyWith<_UsageHistoryResponse> get copyWith =>
      __$UsageHistoryResponseCopyWithImpl<_UsageHistoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UsageHistoryResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsageHistoryResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.user_name, user_name) ||
                other.user_name == user_name) &&
            (identical(other.user_phone, user_phone) ||
                other.user_phone == user_phone) &&
            (identical(other.space_id, space_id) ||
                other.space_id == space_id) &&
            (identical(other.space_name, space_name) ||
                other.space_name == space_name) &&
            (identical(other.start_at, start_at) ||
                other.start_at == start_at) &&
            (identical(other.end_at, end_at) || other.end_at == end_at) &&
            (identical(other.rental_count, rental_count) ||
                other.rental_count == rental_count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, user_id, user_name,
      user_phone, space_id, space_name, start_at, end_at, rental_count);

  @override
  String toString() {
    return 'UsageHistoryResponse(id: $id, user_id: $user_id, user_name: $user_name, user_phone: $user_phone, space_id: $space_id, space_name: $space_name, start_at: $start_at, end_at: $end_at, rental_count: $rental_count)';
  }
}

/// @nodoc
abstract mixin class _$UsageHistoryResponseCopyWith<$Res>
    implements $UsageHistoryResponseCopyWith<$Res> {
  factory _$UsageHistoryResponseCopyWith(_UsageHistoryResponse value,
          $Res Function(_UsageHistoryResponse) _then) =
      __$UsageHistoryResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String user_id,
      String user_name,
      String user_phone,
      String space_id,
      String space_name,
      String start_at,
      String end_at,
      int rental_count});
}

/// @nodoc
class __$UsageHistoryResponseCopyWithImpl<$Res>
    implements _$UsageHistoryResponseCopyWith<$Res> {
  __$UsageHistoryResponseCopyWithImpl(this._self, this._then);

  final _UsageHistoryResponse _self;
  final $Res Function(_UsageHistoryResponse) _then;

  /// Create a copy of UsageHistoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? user_id = null,
    Object? user_name = null,
    Object? user_phone = null,
    Object? space_id = null,
    Object? space_name = null,
    Object? start_at = null,
    Object? end_at = null,
    Object? rental_count = null,
  }) {
    return _then(_UsageHistoryResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _self.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      user_name: null == user_name
          ? _self.user_name
          : user_name // ignore: cast_nullable_to_non_nullable
              as String,
      user_phone: null == user_phone
          ? _self.user_phone
          : user_phone // ignore: cast_nullable_to_non_nullable
              as String,
      space_id: null == space_id
          ? _self.space_id
          : space_id // ignore: cast_nullable_to_non_nullable
              as String,
      space_name: null == space_name
          ? _self.space_name
          : space_name // ignore: cast_nullable_to_non_nullable
              as String,
      start_at: null == start_at
          ? _self.start_at
          : start_at // ignore: cast_nullable_to_non_nullable
              as String,
      end_at: null == end_at
          ? _self.end_at
          : end_at // ignore: cast_nullable_to_non_nullable
              as String,
      rental_count: null == rental_count
          ? _self.rental_count
          : rental_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
