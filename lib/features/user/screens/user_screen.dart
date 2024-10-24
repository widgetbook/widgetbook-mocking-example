import 'package:flutter/material.dart';
import 'package:widgetbook_mocking/features/user/provider/user_provider.dart';
import 'package:widgetbook_mocking/features/user/widgets/user_widget.dart';

// NOTE: This is the original UserScreen widget
// Complexity-wise it's very simple as it depends on the `UserProvider`.
class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: UserWidget());
  }
}

// NOTE: This is the refactored UserScreen widget
// The complexity of the Widget is only slightly increased, but the
//UserWidgetRefactored has a more transparent Widget API with transparent
// properties and no (state) dependencies.
class UserScreenRefactored extends StatelessWidget {
  const UserScreenRefactored({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = UserProvider.of(context);
    return Center(
      child: UserWidgetRefactored(
        user: provider.user,
        onLogout: () => provider.logout(),
      ),
    );
  }
}
