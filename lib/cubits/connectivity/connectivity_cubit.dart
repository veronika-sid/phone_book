import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connectivity_state.dart';
part 'connectivity_cubit.freezed.dart';

class ConnectivityCubit extends Cubit<ConnectivityState> {
  ConnectivityCubit() : super(ConnectivityState());

  Future<void> checkNetwork () async {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) async {
      if(result == ConnectivityResult.mobile || result == ConnectivityResult.wifi) {
        emit(state.copyWith(hasNetwork: true));
      } else {
        emit(state.copyWith(hasNetwork: false));
      }
    });
  }
}
