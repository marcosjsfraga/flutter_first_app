// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:first_app/services/prefs_service.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.wait([
      PrefsService.keyHaveValue('user_email'),
    ]).then((value) => value[0]
        ? Navigator.of(context).pushReplacementNamed('/home')
        : Navigator.of(context).pushReplacementNamed('/login'));

    // Future.delayed(Duration(seconds: 3))
    //     .then((_) => Navigator.of(context).pushReplacementNamed('/login'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: CircularProgressIndicator(
          color: Colors.blue.shade700,
        ),
      ),
    );
  }
}
