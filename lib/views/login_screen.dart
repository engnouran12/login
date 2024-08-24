import 'package:flutter/material.dart';
import 'package:login/views/wiidgets/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: const Center(child: LoginBody()),
    );
  }
}
