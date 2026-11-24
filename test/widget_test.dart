import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:prak_testing_debugging/main.dart';

void main() {
  testWidgets('Uji interaksi form konversi suhu', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: KonversiSuhuPage()));

    expect(find.text('Hasil: -'), findsOneWidget);

    await tester.enterText(find.byKey(const Key('input_suhu')), '100');
    await tester.tap(find.byKey(const Key('btn_konversi')));
    await tester.pump();

    expect(find.text('Hasil: 212.0 °F'), findsOneWidget);
  }); // testWidgets('Uji interaksi form konversi suhu')
}