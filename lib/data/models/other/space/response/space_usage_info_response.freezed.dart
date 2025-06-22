// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'space_usage_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpaceUsageInfoResponse {
  String get space_id;
  String get usage_id;
  String get space_name;
  List<ItemAvailableRental> get rental_item;
  String get start_at;
  String? get end_at;

  /// Create a copy of SpaceUsageInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpaceUsageInfoResponseCopyWith<SpaceUsageInfoResponse> get copyWith =>
      _$SpaceUsageInfoResponseCopyWithImpl<SpaceUsageInfoResponse>(
          this as SpaceUsageInfoResponse, _$identity);

  /// Serializes this SpaceUsageInfoResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpaceUsageInfoResponse &&
            (identical(other.space_id, space_id) ||
                other.space_id == space_id) &&
            (identical(other.usage_id, usage_id) ||
                other.usage_id == usage_id) &&
            (identical(other.space_name, space_name) ||
                other.space_name == space_name) &&
            const DeepCollectionEquality()
                .equals(other.rental_item, rental_item) &&
            (identical(other.start_at, start_at) ||
                other.start_at == start_at) &&
            (identical(other.end_at, end_at) || other.end_at == end_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, space_id, usage_id, space_name,
      const DeepCollectionEquality().hash(rental_item), start_at, end_at);

  @override
  String toString() {
    return 'SpaceUsageInfoResponse(space_id: $space_id, usage_id: $usage_id, space_name: $space_name, rental_item: $rental_item, start_at: $start_at, end_at: $end_at)';
  }
}

/// @nodoc
abstract mixin class $SpaceUsageInfoResponseCopyWith<$Res> {
  factory $SpaceUsageInfoResponseCopyWith(SpaceUsageInfoResponse value,
          $Res Function(SpaceUsageInfoResponse) _then) =
      _$SpaceUsageInfoResponseCopyWithImpl;
  @useResult
  $Res call(
      {String space_id,
      String usage_id,
      String space_name,
      List<ItemAvailableRental> rental_item,
      String start_at,
      String? end_at});
}

/// @nodoc
class _$SpaceUsageInfoResponseCopyWithImpl<$Res>
    implements $SpaceUsageInfoResponseCopyWith<$Res> {
  _$SpaceUsageInfoResponseCopyWithImpl(this._self, this._then);

  final SpaceUsageInfoResponse _self;
  final $Res Function(SpaceUsageInfoResponse) _then;

  /// Create a copy of SpaceUsageInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? space_id = null,
    Object? usage_id = null,
    Object? space_name = null,
    Object? rental_item = null,
    Object? start_at = null,
    Object? end_at = freezed,
  }) {
    return _then(_self.copyWith(
      space_id: null == space_id
          ? _self.space_id
          : space_id // ignore: cast_nullable_to_non_nullable
              as String,
      usage_id: null == usage_id
          ? _self.usage_id
          : usage_id // ignore: cast_nullable_to_non_nullable
              as String,
      space_name: null == space_name
          ? _self.space_name
          : space_name // ignore: cast_nullable_to_non_nullable
              as String,
      rental_item: null == rental_item
          ? _self.rental_item
          : rental_item // ignore: cast_nullable_to_non_nullable
              as List<ItemAvailableRental>,
      start_at: null == start_at
          ? _self.start_at
          : start_at // ignore: cast_nullable_to_non_nullable
              as String,
      end_at: freezed == end_at
          ? _self.end_at
          : end_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SpaceUsageInfoResponse implements SpaceUsageInfoResponse {
  _SpaceUsageInfoResponse(
      {required this.space_id,
      required this.usage_id,
      required this.space_name,
      required final List<ItemAvailableRental> rental_item,
      required this.start_at,
      this.end_at})
      : _rental_item = rental_item;
  factory _SpaceUsageInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$SpaceUsageInfoResponseFromJson(json);

  @override
  final String space_id;
  @override
  final String usage_id;
  @override
  final String space_name;
  final List<ItemAvailableRental> _rental_item;
  @override
  List<ItemAvailableRental> get rental_item {
    if (_rental_item is EqualUnmodifiableListView) return _rental_item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rental_item);
  }

  @override
  final String start_at;
  @override
  final String? end_at;

  /// Create a copy of SpaceUsageInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpaceUsageInfoResponseCopyWith<_SpaceUsageInfoResponse> get copyWith =>
      __$SpaceUsageInfoResponseCopyWithImpl<_SpaceUsageInfoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SpaceUsageInfoResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpaceUsageInfoResponse &&
            (identical(other.space_id, space_id) ||
                other.space_id == space_id) &&
            (identical(other.usage_id, usage_id) ||
                other.usage_id == usage_id) &&
            (identical(other.space_name, space_name) ||
                other.space_name == space_name) &&
            const DeepCollectionEquality()
                .equals(other._rental_item, _rental_item) &&
            (identical(other.start_at, start_at) ||
                other.start_at == start_at) &&
            (identical(other.end_at, end_at) || other.end_at == end_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, space_id, usage_id, space_name,
      const DeepCollectionEquality().hash(_rental_item), start_at, end_at);

  @override
  String toString() {
    return 'SpaceUsageInfoResponse(space_id: $space_id, usage_id: $usage_id, space_name: $space_name, rental_item: $rental_item, start_at: $start_at, end_at: $end_at)';
  }
}

/// @nodoc
abstract mixin class _$SpaceUsageInfoResponseCopyWith<$Res>
    implements $SpaceUsageInfoResponseCopyWith<$Res> {
  factory _$SpaceUsageInfoResponseCopyWith(_SpaceUsageInfoResponse value,
          $Res Function(_SpaceUsageInfoResponse) _then) =
      __$SpaceUsageInfoResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String space_id,
      String usage_id,
      String space_name,
      List<ItemAvailableRental> rental_item,
      String start_at,
      String? end_at});
}

/// @nodoc
class __$SpaceUsageInfoResponseCopyWithImpl<$Res>
    implements _$SpaceUsageInfoResponseCopyWith<$Res> {
  __$SpaceUsageInfoResponseCopyWithImpl(this._self, this._then);

  final _SpaceUsageInfoResponse _self;
  final $Res Function(_SpaceUsageInfoResponse) _then;

  /// Create a copy of SpaceUsageInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? space_id = null,
    Object? usage_id = null,
    Object? space_name = null,
    Object? rental_item = null,
    Object? start_at = null,
    Object? end_at = freezed,
  }) {
    return _then(_SpaceUsageInfoResponse(
      space_id: null == space_id
          ? _self.space_id
          : space_id // ignore: cast_nullable_to_non_nullable
              as String,
      usage_id: null == usage_id
          ? _self.usage_id
          : usage_id // ignore: cast_nullable_to_non_nullable
              as String,
      space_name: null == space_name
          ? _self.space_name
          : space_name // ignore: cast_nullable_to_non_nullable
              as String,
      rental_item: null == rental_item
          ? _self._rental_item
          : rental_item // ignore: cast_nullable_to_non_nullable
              as List<ItemAvailableRental>,
      start_at: null == start_at
          ? _self.start_at
          : start_at // ignore: cast_nullable_to_non_nullable
              as String,
      end_at: freezed == end_at
          ? _self.end_at
          : end_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
