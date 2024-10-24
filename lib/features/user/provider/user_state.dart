import 'package:flutter/material.dart';
import 'package:widgetbook_mocking/features/user/models/user_model.dart';

class UserState extends ChangeNotifier {
  UserModel? user;

  UserState({
    this.user,
  });

  Future<void> login() async {
    user = UserModel(
      id: '1',
      name: 'John',
      email: 'john@widgetbook.io',
      age: 18,
    );

    notifyListeners();
  }

  Future<void> logout() async {
    user = null;
    notifyListeners();
  }
}
