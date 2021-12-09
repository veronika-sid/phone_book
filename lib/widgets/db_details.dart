import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_book/cubits/db/data_base_cubit.dart';
import 'package:phone_book/resources/scalable_size.dart';

class DbDetails extends StatelessWidget {
  const DbDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DataBaseCubit, DataBaseState>(
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
                child: Image.asset('assets/images/noconnection.jpg'),
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
