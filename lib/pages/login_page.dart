// ignore_for_file: avoid_print, prefer_const_constructors, prefer_final_fields, must_be_immutable

import 'package:first_app/components/login/custom_login_button_component.dart';
import 'package:first_app/controllers/login_controller.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_textfield_widget.dart';

class LoginPage extends StatelessWidget {
  LoginController _controller = LoginController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(28),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.people,
                    size: MediaQuery.of(context).size.height * 0.2,
                    color: Colors.red),
                CustomTextFieldWidget(
                    label: 'E-mail', onChange: _controller.setEmail),
                CustomTextFieldWidget(
                  label: 'Senha',
                  onChange: _controller.setPassword,
                  obscureText: true,
                ),
                SizedBox(
                  height: 25,
                ),
                CustomLoginButtonComponent(loginController: _controller),
              ])),
    );
  }
}
