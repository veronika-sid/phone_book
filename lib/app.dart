import 'package:flutter/material.dart';
import 'package:phone_book/screens/add_user.dart';
import 'package:phone_book/screens/details.dart';
import 'package:phone_book/screens/main.dart';
import 'package:phone_book/screens/splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Телефонная книга',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: const TextTheme(
            bodyText1: TextStyle(fontSize: 50, color: Colors.white)),
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/main': (context) => const MainScreen(),
        '/addUser': (context) => AddUserScreen(),
        '/details': (context) => const DetailsScreen(),
      },
    );
  }
}
