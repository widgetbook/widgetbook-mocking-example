import 'package:flutter/widgets.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:widgetbook_mocking/theme/theme.dart';

@UseCase(name: 'Test', type: AppTheme)
Widget themeTest(BuildContext context) {
  return Text(
    context.knobs.string(
      label: 'Text',
      initialValue: 'Hello World',
    ),
    style: TextStyle(color: AppTheme.of(context).fontColor),
  );
}
