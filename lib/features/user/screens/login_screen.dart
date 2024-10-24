import 'package:flutter/material.dart';
import 'package:widgetbook_mocking/features/user/provider/user_provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          UserProvider.of(context).login();
        },
        child: const Text('Login'),
      ),
    );
  }
}
