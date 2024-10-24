import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:widgetbook_mocking/features/user/provider/user_provider.dart';
import 'package:widgetbook_mocking/features/user/provider/user_state.dart';
import 'package:widgetbook_mocking/features/user/screens/login_screen.dart';

@UseCase(name: 'Default', type: LoginScreen)
Widget loginScreenUseCase(BuildContext context) {
  return UserProvider(
    state: UserState(),
    child: const LoginScreen(),
  );
}
