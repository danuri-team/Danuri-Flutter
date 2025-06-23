// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReturnItemRequest {
  int get returned_quantity;
  String get comment;

  /// Create a copy of ReturnItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReturnItemRequestCopyWith<ReturnItemRequest> get copyWith =>
      _$ReturnItemRequestCopyWithImpl<ReturnItemRequest>(
          this as ReturnItemRequest, _$identity);

  /// Serializes this ReturnItemRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReturnItemRequest &&
            (identical(other.returned_quantity, returned_quantity) ||
                other.returned_quantity == returned_quantity) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, returned_quantity, comment);

  @override
  String toString() {
    return 'ReturnItemRequest(returned_quantity: $returned_quantity, comment: $comment)';
  }
}

/// @nodoc
abstract mixin class $ReturnItemRequestCopyWith<$Res> {
  factory $ReturnItemRequestCopyWith(
          ReturnItemRequest value, $Res Function(ReturnItemRequest) _then) =
      _$ReturnItemRequestCopyWithImpl;
  @useResult
  $Res call({int returned_quantity, String comment});
}

/// @nodoc
class _$ReturnItemRequestCopyWithImpl<$Res>
    implements $ReturnItemRequestCopyWith<$Res> {
  _$ReturnItemRequestCopyWithImpl(this._self, this._then);

  final ReturnItemRequest _self;
  final $Res Function(ReturnItemRequest) _then;

  /// Create a copy of ReturnItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? returned_quantity = null,
    Object? comment = null,
  }) {
    return _then(_self.copyWith(
      returned_quantity: null == returned_quantity
          ? _self.returned_quantity
          : returned_quantity // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _self.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ReturnItemRequest implements ReturnItemRequest {
  _ReturnItemRequest({required this.returned_quantity, required this.comment});
  factory _ReturnItemRequest.fromJson(Map<String, dynamic> json) =>
      _$ReturnItemRequestFromJson(json);

  @override
  final int returned_quantity;
  @override
  final String comment;

  /// Create a copy of ReturnItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReturnItemRequestCopyWith<_ReturnItemRequest> get copyWith =>
      __$ReturnItemRequestCopyWithImpl<_ReturnItemRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReturnItemRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReturnItemRequest &&
            (identical(other.returned_quantity, returned_quantity) ||
                other.returned_quantity == returned_quantity) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, returned_quantity, comment);

  @override
  String toString() {
    return 'ReturnItemRequest(returned_quantity: $returned_quantity, comment: $comment)';
  }
}

/// @nodoc
abstract mixin class _$ReturnItemRequestCopyWith<$Res>
    implements $ReturnItemRequestCopyWith<$Res> {
  factory _$ReturnItemRequestCopyWith(
          _ReturnItemRequest value, $Res Function(_ReturnItemRequest) _then) =
      __$ReturnItemRequestCopyWithImpl;
  @override
  @useResult
  $Res call({int returned_quantity, String comment});
}

/// @nodoc
class __$ReturnItemRequestCopyWithImpl<$Res>
    implements _$ReturnItemRequestCopyWith<$Res> {
  __$ReturnItemRequestCopyWithImpl(this._self, this._then);

  final _ReturnItemRequest _self;
  final $Res Function(_ReturnItemRequest) _then;

  /// Create a copy of ReturnItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? returned_quantity = null,
    Object? comment = null,
  }) {
    return _then(_ReturnItemRequest(
      returned_quantity: null == returned_quantity
          ? _self.returned_quantity
          : returned_quantity // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _self.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
