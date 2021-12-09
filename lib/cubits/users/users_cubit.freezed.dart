// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UsersStateTearOff {
  const _$UsersStateTearOff();

  _UsersState call(
      {List<User>? users,
      User? user,
      String? name,
      bool isUserAdded = false,
      bool? isUserDeleted}) {
    return _UsersState(
      users: users,
      user: user,
      name: name,
      isUserAdded: isUserAdded,
      isUserDeleted: isUserDeleted,
    );
  }
}

/// @nodoc
const $UsersState = _$UsersStateTearOff();

/// @nodoc
mixin _$UsersState {
  List<User>? get users => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  bool get isUserAdded => throw _privateConstructorUsedError;
  bool? get isUserDeleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersStateCopyWith<UsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res>;
  $Res call(
      {List<User>? users,
      User? user,
      String? name,
      bool isUserAdded,
      bool? isUserDeleted});
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res> implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  final UsersState _value;
  // ignore: unused_field
  final $Res Function(UsersState) _then;

  @override
  $Res call({
    Object? users = freezed,
    Object? user = freezed,
    Object? name = freezed,
    Object? isUserAdded = freezed,
    Object? isUserDeleted = freezed,
  }) {
    return _then(_value.copyWith(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isUserAdded: isUserAdded == freezed
          ? _value.isUserAdded
          : isUserAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      isUserDeleted: isUserDeleted == freezed
          ? _value.isUserDeleted
          : isUserDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$UsersStateCopyWith<$Res> implements $UsersStateCopyWith<$Res> {
  factory _$UsersStateCopyWith(
          _UsersState value, $Res Function(_UsersState) then) =
      __$UsersStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<User>? users,
      User? user,
      String? name,
      bool isUserAdded,
      bool? isUserDeleted});
}

/// @nodoc
class __$UsersStateCopyWithImpl<$Res> extends _$UsersStateCopyWithImpl<$Res>
    implements _$UsersStateCopyWith<$Res> {
  __$UsersStateCopyWithImpl(
      _UsersState _value, $Res Function(_UsersState) _then)
      : super(_value, (v) => _then(v as _UsersState));

  @override
  _UsersState get _value => super._value as _UsersState;

  @override
  $Res call({
    Object? users = freezed,
    Object? user = freezed,
    Object? name = freezed,
    Object? isUserAdded = freezed,
    Object? isUserDeleted = freezed,
  }) {
    return _then(_UsersState(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isUserAdded: isUserAdded == freezed
          ? _value.isUserAdded
          : isUserAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      isUserDeleted: isUserDeleted == freezed
          ? _value.isUserDeleted
          : isUserDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_UsersState implements _UsersState {
  _$_UsersState(
      {this.users,
      this.user,
      this.name,
      this.isUserAdded = false,
      this.isUserDeleted});

  @override
  final List<User>? users;
  @override
  final User? user;
  @override
  final String? name;
  @JsonKey(defaultValue: false)
  @override
  final bool isUserAdded;
  @override
  final bool? isUserDeleted;

  @override
  String toString() {
    return 'UsersState(users: $users, user: $user, name: $name, isUserAdded: $isUserAdded, isUserDeleted: $isUserDeleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsersState &&
            const DeepCollectionEquality().equals(other.users, users) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.isUserAdded, isUserAdded) &&
            const DeepCollectionEquality()
                .equals(other.isUserDeleted, isUserDeleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(users),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(isUserAdded),
      const DeepCollectionEquality().hash(isUserDeleted));

  @JsonKey(ignore: true)
  @override
  _$UsersStateCopyWith<_UsersState> get copyWith =>
      __$UsersStateCopyWithImpl<_UsersState>(this, _$identity);
}

abstract class _UsersState implements UsersState {
  factory _UsersState(
      {List<User>? users,
      User? user,
      String? name,
      bool isUserAdded,
      bool? isUserDeleted}) = _$_UsersState;

  @override
  List<User>? get users;
  @override
  User? get user;
  @override
  String? get name;
  @override
  bool get isUserAdded;
  @override
  bool? get isUserDeleted;
  @override
  @JsonKey(ignore: true)
  _$UsersStateCopyWith<_UsersState> get copyWith =>
      throw _privateConstructorUsedError;
}
