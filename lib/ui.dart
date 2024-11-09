import 'package:flutter/material.dart';
import 'api_service.dart';

class Ui extends StatelessWidget {
  final ApiService apiService = ApiService();

  Ui({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Auth Example')),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => apiService.login('test_user', 'password123'),
                child: const Text('Login'),
              ),
              ElevatedButton(
                onPressed: () => apiService.signUp('test_user', 'email@example.com', 'password123'),
                child: const Text('Sign up'),
              ),
              ElevatedButton(
                onPressed: () => apiService.resetPassword('email@example.com'),
                child: const Text('Reset Password'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
