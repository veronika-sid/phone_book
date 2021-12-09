import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_book/cubits/users/users_cubit.dart';
import 'package:phone_book/resources/scalable_size.dart';

class ApiDetails extends StatelessWidget {
  const ApiDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersCubit, UsersState>(
      builder: (context, state) {
        return state.user != null
            ? Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: context.getScalableHeight(100),
                width: context.getScalableWidth(100),
                child: ClipOval(
                  child: FadeInImage.assetNetwork(
                    fit: BoxFit.cover,
                    placeholder: 'assets/images/loading.gif',
                    image: state.user!.avatar,
                    imageErrorBuilder: (BuildContext context,
                        Object exception, StackTrace? stackTrace) {
                      return Image.asset(
                        'assets/images/error.png',
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: context.getScalableHeight(20)),
              Text(
                'name: ${state.user!.name}',
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: context.getScalableHeight(20)),
              Text(
                'id: ${state.user!.id.toString()}',
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: context.getScalableHeight(20)),
              Text(
                'created: ${state.user!.createdAt.toString()}',
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
            : const Text('Что-то пошло не так');
      },
    );
  }
}
