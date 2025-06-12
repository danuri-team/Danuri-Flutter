// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateItemRequest {
  String get name;
  String get totalQuantity;
  String get status;

  /// Create a copy of UpdateItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateItemRequestCopyWith<UpdateItemRequest> get copyWith =>
      _$UpdateItemRequestCopyWithImpl<UpdateItemRequest>(
          this as UpdateItemRequest, _$identity);

  /// Serializes this UpdateItemRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateItemRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.totalQuantity, totalQuantity) ||
                other.totalQuantity == totalQuantity) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, totalQuantity, status);

  @override
  String toString() {
    return 'UpdateItemRequest(name: $name, totalQuantity: $totalQuantity, status: $status)';
  }
}

/// @nodoc
abstract mixin class $UpdateItemRequestCopyWith<$Res> {
  factory $UpdateItemRequestCopyWith(
          UpdateItemRequest value, $Res Function(UpdateItemRequest) _then) =
      _$UpdateItemRequestCopyWithImpl;
  @useResult
  $Res call({String name, String totalQuantity, String status});
}

/// @nodoc
class _$UpdateItemRequestCopyWithImpl<$Res>
    implements $UpdateItemRequestCopyWith<$Res> {
  _$UpdateItemRequestCopyWithImpl(this._self, this._then);

  final UpdateItemRequest _self;
  final $Res Function(UpdateItemRequest) _then;

  /// Create a copy of UpdateItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? totalQuantity = null,
    Object? status = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      totalQuantity: null == totalQuantity
          ? _self.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateItemRequest implements UpdateItemRequest {
  _UpdateItemRequest(
      {required this.name, required this.totalQuantity, required this.status});
  factory _UpdateItemRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateItemRequestFromJson(json);

  @override
  final String name;
  @override
  final String totalQuantity;
  @override
  final String status;

  /// Create a copy of UpdateItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateItemRequestCopyWith<_UpdateItemRequest> get copyWith =>
      __$UpdateItemRequestCopyWithImpl<_UpdateItemRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateItemRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateItemRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.totalQuantity, totalQuantity) ||
                other.totalQuantity == totalQuantity) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, totalQuantity, status);

  @override
  String toString() {
    return 'UpdateItemRequest(name: $name, totalQuantity: $totalQuantity, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$UpdateItemRequestCopyWith<$Res>
    implements $UpdateItemRequestCopyWith<$Res> {
  factory _$UpdateItemRequestCopyWith(
          _UpdateItemRequest value, $Res Function(_UpdateItemRequest) _then) =
      __$UpdateItemRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String totalQuantity, String status});
}

/// @nodoc
class __$UpdateItemRequestCopyWithImpl<$Res>
    implements _$UpdateItemRequestCopyWith<$Res> {
  __$UpdateItemRequestCopyWithImpl(this._self, this._then);

  final _UpdateItemRequest _self;
  final $Res Function(_UpdateItemRequest) _then;

  /// Create a copy of UpdateItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? totalQuantity = null,
    Object? status = null,
  }) {
    return _then(_UpdateItemRequest(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      totalQuantity: null == totalQuantity
          ? _self.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
