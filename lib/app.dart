import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:widgetbook_mocking/app_scaffold.dart';
import 'package:widgetbook_mocking/features/user/provider/user_provider.dart';
import 'package:widgetbook_mocking/features/user/provider/user_state.dart';
import 'package:widgetbook_mocking/features/user/screens/login_screen.dart';
import 'package:widgetbook_mocking/features/user/screens/user_screen.dart';
import 'package:widgetbook_mocking/theme/theme.dart';
import 'package:widgetbook_mocking/theme/theme_data.dart';

final router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/user',
      builder: (context, state) => const UserScreen(),
    ),
  ],
);

class App extends StatelessWidget {
  App({super.key});

  final state = UserState();

  @override
  Widget build(BuildContext context) {
    return AppTheme(
      data: MediaQuery.of(context).platformBrightness == Brightness.light
          ? AppThemeData.light()
          : AppThemeData.dark(),
      child: UserProvider(
        state: state
          ..addListener(() {
            final user = state.user;
            if (user == null) {
              router.go('/login');
            } else {
              router.go('/user');
            }
          }),
        key: const Key('UserProvider'),
        child: Builder(
          builder: (context) {
            return AppScaffold(
              child: WidgetsApp.router(
                title: 'Groceries App',
                debugShowCheckedModeBanner: false,
                color: AppTheme.of(context).backgroundColor,
                routerConfig: router,
              ),
            );
          },
        ),
      ),
    );
  }
}
