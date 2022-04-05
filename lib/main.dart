import 'package:first_app/pages/details_page.dart';
import 'package:first_app/pages/home_page.dart';
import 'package:first_app/pages/login_page.dart';
import 'package:first_app/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter First App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/splash',
        routes: {
          '/splash': (_) => const SplashPage(),
          '/login': (_) => LoginPage(),
          '/home': (_) => const HomePage(),
          '/details': (_) => const DetailsPage(),
        });
  }
}
