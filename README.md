# How to mock pages and widgets

This repo displays how to mock pages and widgets with (state) dependencies.

## Structure of the repo

The repo defines the `widgetbook_mocking` (production) app and a `widgetbook_workspace` (located in the `widgetbook`) folder.

Important parts of this repository are marked with a 
```
// NOTE: 
```
comment and a little explanation. 

## Cataloging components

The important components in this repo are the `UserWidget` and `UserScreen` which you'll find in up to two different settings:
- `UserScreen`/`UserWidget`: This is the initial setting in which both components have `UserProvider` dependencies
- `UserScreenRefactored`/`UserWidgetRefactored`: This is a refactored setting that improves the `UserWidget` component to no longer depend on a `UserProvider` which makes it trivial to mock out the component. 

The Widetbook showcases three different ways of cataloging the `UserWidget` component:
- _Default_: The not recommended way of cataloging such atomic components. 
- _Refactored_: A trivial approach on how to catalog a component that has no dependencies. 
- _Mocked_: Since especially a user might be relevant for a lot of components it's not always possible to extract dependencies to a higher level in the Widget tree. Especially for complex (state) dependencies it might be necessary to use a mocking library like [mocktail](https://pub.dev/packages/mocktail) or [mockito](https://pub.dev/packages/mockito). _mocktail_ was used in this example.

## Questions

If you have questions about this repository or the approach of mocking, please let us know via [Discord](https://discord.com/invite/zT4AMStAJA) or the issues tab in GitHub. 