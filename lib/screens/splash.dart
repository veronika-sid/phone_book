import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_book/cubits/splash/splash_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<SplashCubit>().goToNextPage();
    return BlocConsumer<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state.nextPage) {
          Navigator.of(context).pushReplacementNamed('/main');
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Container(
            color: Colors.indigo,
            child: Center(
                child: Text(
                  'Телефонная книга',
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyText1,
                  textAlign: TextAlign.center,
                )),
          ),
        );
      },
    );
  }
}
