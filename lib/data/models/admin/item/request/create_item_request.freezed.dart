// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateItemRequest {
  String get name;
  String get totalQuantity;
  String get status;

  /// Create a copy of CreateItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CreateItemRequestCopyWith<CreateItemRequest> get copyWith =>
      _$CreateItemRequestCopyWithImpl<CreateItemRequest>(
          this as CreateItemRequest, _$identity);

  /// Serializes this CreateItemRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateItemRequest &&
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
    return 'CreateItemRequest(name: $name, totalQuantity: $totalQuantity, status: $status)';
  }
}

/// @nodoc
abstract mixin class $CreateItemRequestCopyWith<$Res> {
  factory $CreateItemRequestCopyWith(
          CreateItemRequest value, $Res Function(CreateItemRequest) _then) =
      _$CreateItemRequestCopyWithImpl;
  @useResult
  $Res call({String name, String totalQuantity, String status});
}

/// @nodoc
class _$CreateItemRequestCopyWithImpl<$Res>
    implements $CreateItemRequestCopyWith<$Res> {
  _$CreateItemRequestCopyWithImpl(this._self, this._then);

  final CreateItemRequest _self;
  final $Res Function(CreateItemRequest) _then;

  /// Create a copy of CreateItemRequest
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
class _CreateItemRequest implements CreateItemRequest {
  _CreateItemRequest(
      {required this.name, required this.totalQuantity, required this.status});
  factory _CreateItemRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateItemRequestFromJson(json);

  @override
  final String name;
  @override
  final String totalQuantity;
  @override
  final String status;

  /// Create a copy of CreateItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateItemRequestCopyWith<_CreateItemRequest> get copyWith =>
      __$CreateItemRequestCopyWithImpl<_CreateItemRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CreateItemRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateItemRequest &&
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
    return 'CreateItemRequest(name: $name, totalQuantity: $totalQuantity, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$CreateItemRequestCopyWith<$Res>
    implements $CreateItemRequestCopyWith<$Res> {
  factory _$CreateItemRequestCopyWith(
          _CreateItemRequest value, $Res Function(_CreateItemRequest) _then) =
      __$CreateItemRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String totalQuantity, String status});
}

/// @nodoc
class __$CreateItemRequestCopyWithImpl<$Res>
    implements _$CreateItemRequestCopyWith<$Res> {
  __$CreateItemRequestCopyWithImpl(this._self, this._then);

  final _CreateItemRequest _self;
  final $Res Function(_CreateItemRequest) _then;

  /// Create a copy of CreateItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? totalQuantity = null,
    Object? status = null,
  }) {
    return _then(_CreateItemRequest(
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
