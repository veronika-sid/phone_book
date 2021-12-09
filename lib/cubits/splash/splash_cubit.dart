import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashState());

  Future<void> goToNextPage () async {
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(nextPage: true));
  }

}
