import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_book/cubits/db/data_base_cubit.dart';
import 'package:phone_book/resources/scalable_size.dart';

class BdContentListView extends StatelessWidget {
  const BdContentListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<DataBaseCubit>().showBdUsers();
    return BlocBuilder<DataBaseCubit, DataBaseState>(
      builder: (context, state) {
        return state.users != null
            ? state.users!.isNotEmpty
                ? ListView.builder(
                    itemCount: state.users!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          context
                              .read<DataBaseCubit>()
                              .userById(state.users![index]);
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
                                    child: Image.asset(
                                        'assets/images/noconnection.jpg'),
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
                      );
                    })
                : const Center(
                    child: Text(
                      'В базе данных нет контактов. Подключите интернет и обновите БД',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  )
            : const Center(
                child: Text(
                  'В базе данных нет контактов. Подключите интернет и обновите БД',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              );
      },
    );
  }
}
