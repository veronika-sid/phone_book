import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_book/cubits/connectivity/connectivity_cubit.dart';
import 'package:phone_book/cubits/db/data_base_cubit.dart';
import 'package:phone_book/cubits/users/users_cubit.dart';
import 'package:phone_book/resources/scalable_size.dart';
import 'package:provider/src/provider.dart';

class AddUserScreen extends StatelessWidget {
  AddUserScreen({Key? key}) : super(key: key);

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Новый пользователь'),
      ),
      body: BlocBuilder<ConnectivityCubit, ConnectivityState>(
        builder: (context, state) {
          return state.hasNetwork
              ? Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.getScalableWidth(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Введите имя',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo),
                      ),
                      SizedBox(
                        height: context.getScalableHeight(20),
                      ),
                      TextField(
                        controller: _controller,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          alignLabelWithHint: true,
                          labelText: 'Имя',
                          labelStyle: TextStyle(fontSize: 20),
                          isDense: true,
                        ),
                      ),
                      SizedBox(
                        height: context.getScalableHeight(50),
                      ),
                      BlocConsumer<UsersCubit, UsersState>(
                        listener: (context, state) {
                          if (state.isUserAdded) {
                            context.read<UsersCubit>().showUsers();
                            context.read<DataBaseCubit>().updateUserList(state.users!);
                            Navigator.pop(context);
                            context.read<UsersCubit>().closePage();
                          }
                        },
                        builder: (context, state) {
                          return ElevatedButton(
                              onPressed: () async {
                                try {
                                  await context
                                      .read<UsersCubit>()
                                      .addUser(_controller.text);
                                } catch (error) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              'Что-то пошло не так :( Status code: $error')));
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(context.getScalableWidth(300),
                                    context.getScalableHeight(50)),
                              ),
                              child: const Text(
                                'Добавить',
                                style: TextStyle(fontSize: 20),
                              ));
                        },
                      )
                    ],
                  ),
                )
              : const Center(
                  child: Text(
                    'Нет подключения к сети',
                    style: TextStyle(fontSize: 25, color: Colors.indigo),
                    textAlign: TextAlign.center,
                  ),
                );
        },
      ),
    );
  }
}
