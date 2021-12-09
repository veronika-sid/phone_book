import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_book/cubits/connectivity/connectivity_cubit.dart';
import 'package:phone_book/widgets/api_details.dart';
import 'package:phone_book/widgets/db_details.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Детали'),
        ),
        body: BlocBuilder<ConnectivityCubit, ConnectivityState>(
          builder: (context, state) {
            return state.hasNetwork ? const ApiDetails() : const DbDetails();
          },
        ));
  }
}
