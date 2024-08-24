import 'package:flutter/material.dart';
import 'package:login/views/wiidgets/email_field.dart';
import 'package:login/views/wiidgets/login_button.dart';
import 'package:login/views/wiidgets/password_field.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  bool _showPassword = false;
  bool _isLoading = false;
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          EmailField(controller: _phoneNumberController),
          const SizedBox(height: 24),
          PasswordField(
            controller: _passwordController,
            showPassword: _showPassword,
            toggleShowPassword: () {
              setState(() {
                _showPassword = !_showPassword;
              });
            },
          ),
          const SizedBox(height: 100),
          LoginButton(
            isLoading: _isLoading,
            onPressed: () async {
              try {
                if (!_isLoading && formkey.currentState!.validate()) {
                  setState(() {
                    _isLoading = true;
                  });
                }
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(' ,   try again  ${e.toString()}'),
                  ),
                );
              } finally {
                setState(() {
                  _isLoading = false;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
