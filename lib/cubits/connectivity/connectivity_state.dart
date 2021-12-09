part of 'connectivity_cubit.dart';

@freezed
class ConnectivityState with _$ConnectivityState {
  factory ConnectivityState({
    @Default(false) bool hasNetwork,
  }) = _ConnectivityState;
}
