import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_book/cubits/connectivity/connectivity_cubit.dart';
import 'package:phone_book/widgets/home_api_content_listview.dart';
import 'package:phone_book/widgets/home_bd_content_listview.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   context.read<ConnectivityCubit>().checkNetwork();
    return BlocBuilder<ConnectivityCubit, ConnectivityState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.indigo.withOpacity(0.4),
            appBar: AppBar(
              title: const Text('Телефонная книга'),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/addUser');
              },
              child: const Text(
                '+',
                style: TextStyle(fontSize: 28),
              ),
            ),
            body: state.hasNetwork
                ? const ApiContentListView()
                : const BdContentListView());
      },
    );
  }
}
