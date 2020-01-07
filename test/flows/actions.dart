import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../matchers/matchers.dart';

Future<void> clickOnTheTransferFeatureItem(WidgetTester tester) async {
  final transferFeatureItem = find.byWidgetPredicate((widget) =>
      featureItemMatcher(widget, 'Transfer', Icons.monetization_on));
  expect(transferFeatureItem, findsOneWidget);
  return tester.tap(transferFeatureItem);
}

Future<void> clickOntheRaisedButtonWithText(
    WidgetTester tester, String text) async {
  final createButton = find.widgetWithText(RaisedButton, text);
  expect(createButton, findsOneWidget);
  return tester.tap(createButton);
}

Future<void> fillTextFieldWithTextLabel(
    WidgetTester tester, {
      String text = '',
      @required String labelText,
    }) async {
  final nameTextField = find.byWidgetPredicate(
          (widget) => textFieldByLabelTextMatcher(widget, labelText));
  expect(nameTextField, findsOneWidget);
  return tester.enterText(nameTextField, text);
}

Future<void> clickOnTheFabNew(WidgetTester tester) async {
  final fabNewContact = find.widgetWithIcon(FloatingActionButton, Icons.add);
  expect(fabNewContact, findsOneWidget);
  return tester.tap(fabNewContact);
}