// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChangePasswordRequest {
  String get current_password;
  String get new_password;
  String get confirm_password;

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChangePasswordRequestCopyWith<ChangePasswordRequest> get copyWith =>
      _$ChangePasswordRequestCopyWithImpl<ChangePasswordRequest>(
          this as ChangePasswordRequest, _$identity);

  /// Serializes this ChangePasswordRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangePasswordRequest &&
            (identical(other.current_password, current_password) ||
                other.current_password == current_password) &&
            (identical(other.new_password, new_password) ||
                other.new_password == new_password) &&
            (identical(other.confirm_password, confirm_password) ||
                other.confirm_password == confirm_password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, current_password, new_password, confirm_password);

  @override
  String toString() {
    return 'ChangePasswordRequest(current_password: $current_password, new_password: $new_password, confirm_password: $confirm_password)';
  }
}

/// @nodoc
abstract mixin class $ChangePasswordRequestCopyWith<$Res> {
  factory $ChangePasswordRequestCopyWith(ChangePasswordRequest value,
          $Res Function(ChangePasswordRequest) _then) =
      _$ChangePasswordRequestCopyWithImpl;
  @useResult
  $Res call(
      {String current_password, String new_password, String confirm_password});
}

/// @nodoc
class _$ChangePasswordRequestCopyWithImpl<$Res>
    implements $ChangePasswordRequestCopyWith<$Res> {
  _$ChangePasswordRequestCopyWithImpl(this._self, this._then);

  final ChangePasswordRequest _self;
  final $Res Function(ChangePasswordRequest) _then;

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current_password = null,
    Object? new_password = null,
    Object? confirm_password = null,
  }) {
    return _then(_self.copyWith(
      current_password: null == current_password
          ? _self.current_password
          : current_password // ignore: cast_nullable_to_non_nullable
              as String,
      new_password: null == new_password
          ? _self.new_password
          : new_password // ignore: cast_nullable_to_non_nullable
              as String,
      confirm_password: null == confirm_password
          ? _self.confirm_password
          : confirm_password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ChangePasswordRequest implements ChangePasswordRequest {
  _ChangePasswordRequest(
      {required this.current_password,
      required this.new_password,
      required this.confirm_password});
  factory _ChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestFromJson(json);

  @override
  final String current_password;
  @override
  final String new_password;
  @override
  final String confirm_password;

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChangePasswordRequestCopyWith<_ChangePasswordRequest> get copyWith =>
      __$ChangePasswordRequestCopyWithImpl<_ChangePasswordRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChangePasswordRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangePasswordRequest &&
            (identical(other.current_password, current_password) ||
                other.current_password == current_password) &&
            (identical(other.new_password, new_password) ||
                other.new_password == new_password) &&
            (identical(other.confirm_password, confirm_password) ||
                other.confirm_password == confirm_password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, current_password, new_password, confirm_password);

  @override
  String toString() {
    return 'ChangePasswordRequest(current_password: $current_password, new_password: $new_password, confirm_password: $confirm_password)';
  }
}

/// @nodoc
abstract mixin class _$ChangePasswordRequestCopyWith<$Res>
    implements $ChangePasswordRequestCopyWith<$Res> {
  factory _$ChangePasswordRequestCopyWith(_ChangePasswordRequest value,
          $Res Function(_ChangePasswordRequest) _then) =
      __$ChangePasswordRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String current_password, String new_password, String confirm_password});
}

/// @nodoc
class __$ChangePasswordRequestCopyWithImpl<$Res>
    implements _$ChangePasswordRequestCopyWith<$Res> {
  __$ChangePasswordRequestCopyWithImpl(this._self, this._then);

  final _ChangePasswordRequest _self;
  final $Res Function(_ChangePasswordRequest) _then;

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? current_password = null,
    Object? new_password = null,
    Object? confirm_password = null,
  }) {
    return _then(_ChangePasswordRequest(
      current_password: null == current_password
          ? _self.current_password
          : current_password // ignore: cast_nullable_to_non_nullable
              as String,
      new_password: null == new_password
          ? _self.new_password
          : new_password // ignore: cast_nullable_to_non_nullable
              as String,
      confirm_password: null == confirm_password
          ? _self.confirm_password
          : confirm_password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
