part of 'data_base_cubit.dart';

@freezed
class DataBaseState with _$DataBaseState {
  factory DataBaseState({
    List<User>? users,
    User? user,
  }) = _DataBaseState;
}
