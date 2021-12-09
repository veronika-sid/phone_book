import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phone_book/models/user.dart';
import 'package:phone_book/repository/user_repository.dart';

part 'users_state.dart';

part 'users_cubit.freezed.dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit({required this.userRepository}) : super(UsersState());
  final IUserRepository userRepository;

  Future<void> deleteUser(int index) async {
    emit(state.copyWith(isUserDeleted: false));
    try {
      await userRepository.deleteUser(index);
      emit(state.copyWith(isUserDeleted: true));
    } catch (statusCode) {
      rethrow;
    }
  }

  Future<void> addUser(String name) async {
    if (name.isEmpty) {
      emit(state.copyWith(isUserAdded: false));
    } else {
      try {
        await userRepository.addUser(name);
        emit(state.copyWith(isUserAdded: true));
      } catch (statusCode) {
        rethrow;
      }
    }
  }

  Future<void> showUsers() async {
    try {
      final users = await userRepository.getUsersByApi();
      if (users != null) {
        emit(state.copyWith(users: users));
      }
    } catch (statusCode) {
      rethrow;
    }
  }

  Future<void> userById(User user) async {
    emit(state.copyWith(user: user));
  }

  Future<void> closePage () async {
    emit(state.copyWith(isUserAdded: false));
  }

  Future<void> updatePage () async {
    emit(state.copyWith(isUserDeleted: false));
  }

}
