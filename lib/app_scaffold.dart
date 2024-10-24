import 'package:flutter/material.dart';
import 'package:widgetbook_mocking/theme/theme.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.of(context).backgroundColor,
      child: child,
    );
  }
}
