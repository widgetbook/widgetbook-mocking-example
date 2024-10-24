import 'package:flutter/material.dart';
import 'package:widgetbook_mocking/features/user/provider/user_provider.dart';
import 'package:widgetbook_mocking/theme/theme.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final user = UserProvider.of(context).user;

    if (user == null) {
      return const Text('No user logged in');
    }

    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.person,
              color: AppTheme.of(context).fontColor,
            ),
            const SizedBox(width: 8),
            Text(user.name),
          ],
        ),
        TextButton(
          onPressed: () {
            UserProvider.of(context).logout();
          },
          child: const Text('Logout'),
        ),
      ],
    );
  }
}
