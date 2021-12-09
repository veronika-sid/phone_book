import 'package:bloc/bloc.dart';
import 'package:phone_book/models/user.dart';
import 'package:phone_book/repository/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_base_state.dart';

part 'data_base_cubit.freezed.dart';

class DataBaseCubit extends Cubit<DataBaseState> {
  DataBaseCubit({required this.userRepository}) : super(DataBaseState());
  final IUserRepository userRepository;

  Stream<List<User>> get userStream => userRepository.watchUsers();

  Future<void> showBdUsers() async {
    userStream.listen((users) {
      emit(state.copyWith(users: users));
    });
  }

  Future<void> saveUserList(List<User> users) async {
    await userRepository.saveUserList(users);
  }

  Future<void> updateUserList(List<User> users) async {
    await userRepository.updateUserDb(users);
  }

  Future<void> userById(User user) async {
    emit(state.copyWith(user: user));
  }
}
