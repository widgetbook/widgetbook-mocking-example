import 'package:flutter/material.dart';
import 'package:widgetbook_mocking/features/user/models/user_model.dart';
import 'package:widgetbook_mocking/features/user/provider/user_provider.dart';
import 'package:widgetbook_mocking/theme/theme.dart';

// NOTE: This widget is not a best practice example
// You want to make sure that especially your most "atomic" components
// do not depend on (state) dependencies as that makes cataloging
// and testing them harder!
// Below a refactored version of this Widget is implemented.
class UserWidget extends StatelessWidget {
  const UserWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final user = UserProvider.of(context).user;
    final style = TextStyle(
      color: AppTheme.of(context).fontColor,
    );

    if (user == null) {
      return Text('No user logged in', style: style);
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.person,
              color: AppTheme.of(context).fontColor,
            ),
            const SizedBox(width: 8),
            Text(user.name, style: style),
          ],
        ),
        TextButton(
          onPressed: () {
            UserProvider.of(context).logout();
          },
          child: Text('Logout', style: style),
        ),
      ],
    );
  }
}

// NOTE: This is the refactored version of the UserWidget shown above.
// This version is a better practice as it does not depend on the UserProvider
// making it easier to test and catalog.
class UserWidgetRefactored extends StatelessWidget {
  const UserWidgetRefactored({
    super.key,
    this.user,
    required this.onLogout,
  });

  final UserModel? user;
  final VoidCallback onLogout;

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      color: AppTheme.of(context).fontColor,
    );

    if (user == null) {
      return Text('No user logged in', style: style);
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.person,
              color: AppTheme.of(context).fontColor,
            ),
            const SizedBox(width: 8),
            Text(user!.name, style: style),
          ],
        ),
        TextButton(
          onPressed: onLogout,
          child: Text('Logout', style: style),
        ),
      ],
    );
  }
}
