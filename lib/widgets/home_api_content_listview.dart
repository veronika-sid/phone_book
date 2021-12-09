import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_book/cubits/db/data_base_cubit.dart';
import 'package:phone_book/cubits/users/users_cubit.dart';
import 'package:phone_book/resources/scalable_size.dart';

class ApiContentListView extends StatefulWidget {
  const ApiContentListView({Key? key}) : super(key: key);

  @override
  State<ApiContentListView> createState() => _ApiContentListViewState();
}

class _ApiContentListViewState extends State<ApiContentListView> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UsersCubit, UsersState>(
      listener: (context, state) {
        if(state.users !=null) {
          context.read<DataBaseCubit>().saveUserList(state.users!);
        }
      },
      builder: (context, state) {
        try {
          context.read<UsersCubit>().showUsers();
        } catch (statusCode) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                  'Что-то пошло не так :( Error: $statusCode')));
        }
        return state.users == null
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: state.users!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Dismissible(
                    key: UniqueKey(),
                    onDismissed: (_) {
                      try {
                        context
                            .read<UsersCubit>()
                            .deleteUser(state.users![index].id);
                        state.users!.removeWhere(
                                (user) => user.id == state.users![index].id);
                      } catch (statusCode) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                                'Что-то пошло не так :( Status code: $statusCode')));
                        context.read<UsersCubit>().showUsers();
                        context.read<DataBaseCubit>().updateUserList(state.users!);
                      }
                      setState(() {});
                    },
                    child: InkWell(
                      onTap: () {
                        context.read<UsersCubit>().userById(state.users![index]);
                        Navigator.of(context).pushNamed('/details');
                      },
                      child: Card(
                        margin: EdgeInsets.symmetric(
                          vertical: context.getScalableHeight(6),
                          horizontal: context.getScalableWidth(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            children: [
                              SizedBox(
                                height: context.getScalableHeight(100),
                                width: context.getScalableWidth(100),
                                child: ClipOval(
                                  child: FadeInImage.assetNetwork(
                                    fit: BoxFit.cover,
                                    placeholder: 'assets/images/loading.gif',
                                    image: state.users![index].avatar,
                                    imageErrorBuilder: (BuildContext context,
                                        Object exception,
                                        StackTrace? stackTrace) {
                                      return Image.asset(
                                        'assets/images/error.png',
                                        fit: BoxFit.cover,
                                      );
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: context.getScalableWidth(30),
                              ),
                              SizedBox(
                                  width: context.getScalableWidth(200),
                                  child: Text(
                                    state.users![index].name,
                                    style: const TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                });
      },
    );
  }
}
