// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../controllers/login_controller.dart';

class CustomLoginButtonComponent extends StatelessWidget {
  final LoginController loginController;
  const CustomLoginButtonComponent({Key? key, required this.loginController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: loginController.inLoader,
        builder: (_, inLoader, __) => inLoader
            ? CircularProgressIndicator()
            : MaterialButton(
                color: Colors.blue,
                minWidth: double.maxFinite,
                onPressed: () {
                  loginController.auth().then((result) {
                    if (result) {
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.red,
                        content: const Text('Problemas ao efetuar o login.'),
                        duration: const Duration(seconds: 3),
                      ));
                    }
                  });
                },
                child: Text('Login'),
              ));
  }
}
