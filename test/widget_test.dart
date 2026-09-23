import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('Calculator screen renders its inputs', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Kalkulator'), findsOneWidget);
    expect(find.text('input angka 1'), findsOneWidget);
    expect(find.text('input angka 2'), findsOneWidget);
    expect(find.text('tambah'), findsOneWidget);
  });
}
