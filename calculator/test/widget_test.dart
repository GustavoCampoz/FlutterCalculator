import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:calculator/main.dart';

void main() {
  testWidgets('Adicao', (WidgetTester tester) async {
    await tester.pumpWidget(const Calculator());
    await tester.tap(find.text('1'));
    await tester.pump();
    expect(find.text('1'), findsOneWidget);
    await tester.tap(find.text('+'));
    await tester.pump();
    await tester.tap(find.text('2'));
    await tester.pump();
    await tester.tap(find.text('='));
    await tester.pump();
    expect(find.text('3'), findsOneWidget);
    await tester.tap(find.text('C'));
    await tester.pump();
    expect(find.text('0'), findsOneWidget);
  });
  testWidgets('Multiplicacao', (WidgetTester tester) async {
    await tester.pumpWidget(const Calculator());
    await tester.tap(find.text('4'));
    await tester.pump();
    expect(find.text('1'), findsOneWidget);
    await tester.tap(find.text('*'));
    await tester.pump();
    await tester.tap(find.text('4'));
    await tester.pump();
    await tester.tap(find.text('='));
    await tester.pump();
    expect(find.text('8'), findsOneWidget);
    await tester.tap(find.text('C'));
    await tester.pump();
    expect(find.text('0'), findsOneWidget);
  });
  testWidgets('Divisao', (WidgetTester tester) async {
    await tester.pumpWidget(const Calculator());
    await tester.tap(find.text('10'));
    await tester.pump();
    expect(find.text('1'), findsOneWidget);
    await tester.tap(find.text('/'));
    await tester.pump();
    await tester.tap(find.text('2'));
    await tester.pump();
    await tester.tap(find.text('='));
    await tester.pump();
    expect(find.text('5'), findsOneWidget);
    await tester.tap(find.text('C'));
    await tester.pump();
    expect(find.text('0'), findsOneWidget);
  });
  testWidgets('Subtracao', (WidgetTester tester) async {
    await tester.pumpWidget(const Calculator());
    await tester.tap(find.text('6'));
    await tester.pump();
    expect(find.text('1'), findsOneWidget);
    await tester.tap(find.text('-'));
    await tester.pump();
    await tester.tap(find.text('3'));
    await tester.pump();
    await tester.tap(find.text('='));
    await tester.pump();
    expect(find.text('3'), findsOneWidget);
    await tester.tap(find.text('C'));
    await tester.pump();
    expect(find.text('0'), findsOneWidget);
  });
}
