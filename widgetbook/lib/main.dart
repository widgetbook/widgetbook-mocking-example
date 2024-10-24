import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_mocking/app_scaffold.dart';
import 'package:widgetbook_mocking/theme/theme.dart';
import 'package:widgetbook_mocking/theme/theme_data.dart';

import 'main.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      appBuilder: (context, child) {
        return child;
      },
      addons: [
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhone13,
          ],
        ),
        AlignmentAddon(),
        // NOTE: Make sure that the custom `AppTheme` InheritedWidget is available
        // in the Widget tree. If you're cataloging widgets from your own application
        // you want to mirror the Widget tree of your production application!
        ThemeAddon(
          themes: [
            WidgetbookTheme(
              name: 'Light',
              data: AppThemeData.light(),
            ),
            WidgetbookTheme(
              name: 'Dark',
              data: AppThemeData.dark(),
            ),
          ],
          themeBuilder: (context, data, child) {
            return AppTheme(
              data: data,
              child: AppScaffold(child: child),
            );
          },
        ),
      ],
      // The [directories] variable does not exist yet,
      // it will be generated in the next step
      directories: directories,
    );
  }
}
