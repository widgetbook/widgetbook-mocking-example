// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_workspace/features/user/screens/login_screen.dart'
    as _i2;
import 'package:widgetbook_workspace/features/user/screens/user_screen.dart'
    as _i3;
import 'package:widgetbook_workspace/features/user/widgets/user_widget.dart'
    as _i4;
import 'package:widgetbook_workspace/theme_test.dart' as _i5;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'features',
    children: [
      _i1.WidgetbookFolder(
        name: 'user',
        children: [
          _i1.WidgetbookFolder(
            name: 'screens',
            children: [
              _i1.WidgetbookLeafComponent(
                name: 'LoginScreen',
                useCase: _i1.WidgetbookUseCase(
                  name: 'Default',
                  builder: _i2.loginScreenUseCase,
                ),
              ),
              _i1.WidgetbookComponent(
                name: 'UserScreen',
                useCases: [
                  _i1.WidgetbookUseCase(
                    name: 'Default',
                    builder: _i3.userScreenUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Refactored',
                    builder: _i3.userScreenRefactored,
                  ),
                ],
              ),
            ],
          ),
          _i1.WidgetbookFolder(
            name: 'widgets',
            children: [
              _i1.WidgetbookComponent(
                name: 'UserWidget',
                useCases: [
                  _i1.WidgetbookUseCase(
                    name: 'Default',
                    builder: _i4.userWidgetUseCase,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Mocked',
                    builder: _i4.userWidgetUseCaseMocked,
                  ),
                  _i1.WidgetbookUseCase(
                    name: 'Refactored',
                    builder: _i4.userWidgetUseCaseRefactored,
                  ),
                ],
              )
            ],
          ),
        ],
      )
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'theme',
    children: [
      _i1.WidgetbookLeafComponent(
        name: 'AppTheme',
        useCase: _i1.WidgetbookUseCase(
          name: 'Test',
          builder: _i5.themeTest,
        ),
      )
    ],
  ),
];
