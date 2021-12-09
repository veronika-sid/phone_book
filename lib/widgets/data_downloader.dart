import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_book/cubits/connectivity/connectivity_cubit.dart';
import 'package:phone_book/cubits/db/data_base_cubit.dart';
import 'package:phone_book/cubits/splash/splash_cubit.dart';
import 'package:phone_book/cubits/users/users_cubit.dart';
import 'package:phone_book/repository/user_repository.dart';

class DataDownloader extends StatelessWidget {
  const DataDownloader({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SplashCubit>(create: (_) => SplashCubit()),
        BlocProvider<UsersCubit>(
          create: (_) =>
              UsersCubit(userRepository: context.read<UserRepository>()),
        ),
        BlocProvider<DataBaseCubit>(
          create: (_) =>
              DataBaseCubit(userRepository: context.read<UserRepository>()),
        ),
        BlocProvider<ConnectivityCubit>(create: (_) => ConnectivityCubit()),
      ],
      child: child,
    );
  }
}
