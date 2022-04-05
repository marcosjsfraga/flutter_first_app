// ignore_for_file: prefer_const_constructors

import 'package:first_app/services/prefs_service.dart';
import 'package:flutter/material.dart';

class LoginController {
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  String? _email;
  setEmail(String value) => _email = value;

  String? _password;
  setPassword(String value) => _password = value;

  Future<bool> auth() async {
    inLoader.value = true;
    await Future.delayed(Duration(seconds: 2));
    inLoader.value = false;

    if (_email == 'jonhdoe@email.com' && _password == '1q2w3e') {
      PrefsService.saveKey('user_email', _email);
      return true;
    }

    return false;
  }
}
