// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_base_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DataBaseStateTearOff {
  const _$DataBaseStateTearOff();

  _DataBaseState call({List<User>? users, User? user}) {
    return _DataBaseState(
      users: users,
      user: user,
    );
  }
}

/// @nodoc
const $DataBaseState = _$DataBaseStateTearOff();

/// @nodoc
mixin _$DataBaseState {
  List<User>? get users => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataBaseStateCopyWith<DataBaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataBaseStateCopyWith<$Res> {
  factory $DataBaseStateCopyWith(
          DataBaseState value, $Res Function(DataBaseState) then) =
      _$DataBaseStateCopyWithImpl<$Res>;
  $Res call({List<User>? users, User? user});
}

/// @nodoc
class _$DataBaseStateCopyWithImpl<$Res>
    implements $DataBaseStateCopyWith<$Res> {
  _$DataBaseStateCopyWithImpl(this._value, this._then);

  final DataBaseState _value;
  // ignore: unused_field
  final $Res Function(DataBaseState) _then;

  @override
  $Res call({
    Object? users = freezed,
    Object? user = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$DataBaseStateCopyWith<$Res>
    implements $DataBaseStateCopyWith<$Res> {
  factory _$DataBaseStateCopyWith(
          _DataBaseState value, $Res Function(_DataBaseState) then) =
      __$DataBaseStateCopyWithImpl<$Res>;
  @override
  $Res call({List<User>? users, User? user});
}

/// @nodoc
class __$DataBaseStateCopyWithImpl<$Res>
    extends _$DataBaseStateCopyWithImpl<$Res>
    implements _$DataBaseStateCopyWith<$Res> {
  __$DataBaseStateCopyWithImpl(
      _DataBaseState _value, $Res Function(_DataBaseState) _then)
      : super(_value, (v) => _then(v as _DataBaseState));

  @override
  _DataBaseState get _value => super._value as _DataBaseState;

  @override
  $Res call({
    Object? users = freezed,
    Object? user = freezed,
  }) {
    return _then(_DataBaseState(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_DataBaseState implements _DataBaseState {
  _$_DataBaseState({this.users, this.user});

  @override
  final List<User>? users;
  @override
  final User? user;

  @override
  String toString() {
    return 'DataBaseState(users: $users, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataBaseState &&
            const DeepCollectionEquality().equals(other.users, users) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(users),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$DataBaseStateCopyWith<_DataBaseState> get copyWith =>
      __$DataBaseStateCopyWithImpl<_DataBaseState>(this, _$identity);
}

abstract class _DataBaseState implements DataBaseState {
  factory _DataBaseState({List<User>? users, User? user}) = _$_DataBaseState;

  @override
  List<User>? get users;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$DataBaseStateCopyWith<_DataBaseState> get copyWith =>
      throw _privateConstructorUsedError;
}
