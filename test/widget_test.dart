import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_test/counter_display_widget.dart';

main() {
  testWidgets('CounterWidget should have a text and a number',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: CounterDisplay(number: 5),
      ),
    );

    expect(find.text('COUNTER APP'), findsOneWidget);
    expect(find.text('5'), findsOneWidget);
  });

  group('Testing widget number color', () {

    testWidgets('CounterWidget should have a grey number',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: CounterDisplay(number: 0),
        ),
      );

      final numberFinder = find.text('0');

      expect(numberFinder, findsOneWidget);

      Text numberText = tester.firstWidget(numberFinder);
      expect(numberText.style!.color, Colors.grey);
    });

    testWidgets('CounterWidget should have a red number',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: CounterDisplay(number: -3),
        ),
      );

      final numberFinder = find.text('-3');

      expect(numberFinder, findsOneWidget);

      Text numberText = tester.firstWidget(numberFinder);
      expect(numberText.style!.color, Colors.red);
    });

    testWidgets('CounterWidget should have a green number',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: CounterDisplay(number: 20),
        ),
      );

      final numberFinder = find.text('20');

      expect(numberFinder, findsOneWidget);

      Text numberText = tester.firstWidget(numberFinder);
      expect(numberText.style!.color, Colors.green);
    });

  });
}
