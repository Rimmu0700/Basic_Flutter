import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: const Center(
        child: Text(
          "Register Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
