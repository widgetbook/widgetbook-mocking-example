import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:widgetbook_mocking/features/user/models/user_model.dart';
import 'package:widgetbook_mocking/features/user/provider/user_provider.dart';
import 'package:widgetbook_mocking/features/user/provider/user_state.dart';
import 'package:widgetbook_mocking/features/user/screens/user_screen.dart';

const user = UserModel(
  id: '1',
  name: 'John',
  email: 'john@widgetbook.io',
  age: 18,
);

// NOTE: The cataloging of this screen Widget is the same for the original and
// the refactored version.
@UseCase(name: 'Default', type: UserScreen)
Widget userScreenUseCase(BuildContext context) {
  return UserProvider(
    state: UserState(
      user: user,
    ),
    child: const UserScreen(),
  );
}

@UseCase(name: 'Refactored', type: UserScreen)
Widget userScreenRefactored(BuildContext context) {
  return UserProvider(
    state: UserState(
      user: user,
    ),
    child: const UserScreenRefactored(),
  );
}
