part of 'users_cubit.dart';

@freezed
class UsersState with _$UsersState {
  factory UsersState({
    List<User>? users,
    User? user,
    String? name,
    @Default(false) bool isUserAdded,
    bool? isUserDeleted,
  }) = _UsersState;
}
