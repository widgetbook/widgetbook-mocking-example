import 'package:flutter/material.dart';
import 'package:mocktail/mocktail.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:widgetbook_mocking/features/user/models/user_model.dart';
import 'package:widgetbook_mocking/features/user/provider/user_provider.dart';
import 'package:widgetbook_mocking/features/user/provider/user_state.dart';
import 'package:widgetbook_mocking/features/user/widgets/user_widget.dart';

const user = UserModel(
  id: '1',
  name: 'John',
  email: 'john@widgetbook.io',
  age: 18,
);

// NOTE: This is the original use case
// It's rather complex to catalog and test this Widget as it has to be wrapped
// with `UserProvider`
@UseCase(name: 'Default', type: UserWidget)
Widget userWidgetUseCase(BuildContext context) {
  return UserProvider(
    state: UserState(user: user),
    child: const UserWidget(),
  );
}

// NOTE: This is the refactored use case
// See how it's trivial to test and catalog this Widget
// as the dependencies (only its parameters) are well-defined and transparent.
@UseCase(name: 'Refactored', type: UserWidget)
Widget userWidgetUseCaseRefactored(BuildContext context) {
  return UserWidgetRefactored(
    user: user,
    onLogout: () {},
  );
}

// NOTE: This shows how you can use a mocking libarary like `mocktail` to
// Mock out your (state) dependencies.
// While we would not recommend to do so for this particular Widget,
// you might have some Widgets at which such an approach is the eaiest to work
// with.
class MockUserState extends Mock implements UserState {}

@UseCase(name: 'Mocked', type: UserWidget)
Widget userWidgetUseCaseMocked(BuildContext context) {
  final state = MockUserState();
  when(() => state.user).thenReturn(user);

  return UserProvider(
    state: state,
    child: const UserWidget(),
  );
}
