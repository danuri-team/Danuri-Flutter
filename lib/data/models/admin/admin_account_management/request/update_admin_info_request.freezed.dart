// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_admin_info_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateAdminInfoRequest {
  String get name;
  String get email;
  String get phone;

  /// Create a copy of UpdateAdminInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateAdminInfoRequestCopyWith<UpdateAdminInfoRequest> get copyWith =>
      _$UpdateAdminInfoRequestCopyWithImpl<UpdateAdminInfoRequest>(
          this as UpdateAdminInfoRequest, _$identity);

  /// Serializes this UpdateAdminInfoRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateAdminInfoRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, phone);

  @override
  String toString() {
    return 'UpdateAdminInfoRequest(name: $name, email: $email, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class $UpdateAdminInfoRequestCopyWith<$Res> {
  factory $UpdateAdminInfoRequestCopyWith(UpdateAdminInfoRequest value,
          $Res Function(UpdateAdminInfoRequest) _then) =
      _$UpdateAdminInfoRequestCopyWithImpl;
  @useResult
  $Res call({String name, String email, String phone});
}

/// @nodoc
class _$UpdateAdminInfoRequestCopyWithImpl<$Res>
    implements $UpdateAdminInfoRequestCopyWith<$Res> {
  _$UpdateAdminInfoRequestCopyWithImpl(this._self, this._then);

  final UpdateAdminInfoRequest _self;
  final $Res Function(UpdateAdminInfoRequest) _then;

  /// Create a copy of UpdateAdminInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phone = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UpdateAdminInfoRequest implements UpdateAdminInfoRequest {
  _UpdateAdminInfoRequest(
      {required this.name, required this.email, required this.phone});
  factory _UpdateAdminInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateAdminInfoRequestFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String phone;

  /// Create a copy of UpdateAdminInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateAdminInfoRequestCopyWith<_UpdateAdminInfoRequest> get copyWith =>
      __$UpdateAdminInfoRequestCopyWithImpl<_UpdateAdminInfoRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UpdateAdminInfoRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateAdminInfoRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, phone);

  @override
  String toString() {
    return 'UpdateAdminInfoRequest(name: $name, email: $email, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class _$UpdateAdminInfoRequestCopyWith<$Res>
    implements $UpdateAdminInfoRequestCopyWith<$Res> {
  factory _$UpdateAdminInfoRequestCopyWith(_UpdateAdminInfoRequest value,
          $Res Function(_UpdateAdminInfoRequest) _then) =
      __$UpdateAdminInfoRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String email, String phone});
}

/// @nodoc
class __$UpdateAdminInfoRequestCopyWithImpl<$Res>
    implements _$UpdateAdminInfoRequestCopyWith<$Res> {
  __$UpdateAdminInfoRequestCopyWithImpl(this._self, this._then);

  final _UpdateAdminInfoRequest _self;
  final $Res Function(_UpdateAdminInfoRequest) _then;

  /// Create a copy of UpdateAdminInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phone = null,
  }) {
    return _then(_UpdateAdminInfoRequest(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
