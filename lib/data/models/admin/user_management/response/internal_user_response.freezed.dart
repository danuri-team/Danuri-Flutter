// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internal_user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InternalUserResponse {
  List<UserResponse> get users;

  /// Create a copy of InternalUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InternalUserResponseCopyWith<InternalUserResponse> get copyWith =>
      _$InternalUserResponseCopyWithImpl<InternalUserResponse>(
          this as InternalUserResponse, _$identity);

  /// Serializes this InternalUserResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InternalUserResponse &&
            const DeepCollectionEquality().equals(other.users, users));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(users));

  @override
  String toString() {
    return 'InternalUserResponse(users: $users)';
  }
}

/// @nodoc
abstract mixin class $InternalUserResponseCopyWith<$Res> {
  factory $InternalUserResponseCopyWith(InternalUserResponse value,
          $Res Function(InternalUserResponse) _then) =
      _$InternalUserResponseCopyWithImpl;
  @useResult
  $Res call({List<UserResponse> users});
}

/// @nodoc
class _$InternalUserResponseCopyWithImpl<$Res>
    implements $InternalUserResponseCopyWith<$Res> {
  _$InternalUserResponseCopyWithImpl(this._self, this._then);

  final InternalUserResponse _self;
  final $Res Function(InternalUserResponse) _then;

  /// Create a copy of InternalUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_self.copyWith(
      users: null == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _InternalUserResponse implements InternalUserResponse {
  _InternalUserResponse({required final List<UserResponse> users})
      : _users = users;
  factory _InternalUserResponse.fromJson(Map<String, dynamic> json) =>
      _$InternalUserResponseFromJson(json);

  final List<UserResponse> _users;
  @override
  List<UserResponse> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  /// Create a copy of InternalUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InternalUserResponseCopyWith<_InternalUserResponse> get copyWith =>
      __$InternalUserResponseCopyWithImpl<_InternalUserResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InternalUserResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InternalUserResponse &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @override
  String toString() {
    return 'InternalUserResponse(users: $users)';
  }
}

/// @nodoc
abstract mixin class _$InternalUserResponseCopyWith<$Res>
    implements $InternalUserResponseCopyWith<$Res> {
  factory _$InternalUserResponseCopyWith(_InternalUserResponse value,
          $Res Function(_InternalUserResponse) _then) =
      __$InternalUserResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<UserResponse> users});
}

/// @nodoc
class __$InternalUserResponseCopyWithImpl<$Res>
    implements _$InternalUserResponseCopyWith<$Res> {
  __$InternalUserResponseCopyWithImpl(this._self, this._then);

  final _InternalUserResponse _self;
  final $Res Function(_InternalUserResponse) _then;

  /// Create a copy of InternalUserResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? users = null,
  }) {
    return _then(_InternalUserResponse(
      users: null == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserResponse>,
    ));
  }
}

// dart format on
