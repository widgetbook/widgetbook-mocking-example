import 'package:flutter/material.dart';
import 'package:widgetbook_mocking/features/user/provider/user_state.dart';

class UserProvider extends InheritedNotifier<UserState> {
  const UserProvider(
      {super.key, required super.child, required UserState state})
      : super(
          notifier: state,
        );

  static UserState of(BuildContext context) {
    final widget = context.dependOnInheritedWidgetOfExactType<UserProvider>();
    return widget!.notifier!;
  }
}
