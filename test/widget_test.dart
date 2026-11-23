import 'package:flutter_test/flutter_test.dart';

import 'package:hallo_welt/main.dart';

void main() {
  testWidgets('zeigt "Hallo Welt!" an', (WidgetTester tester) async {
    await tester.pumpWidget(const HalloWeltApp());

    expect(find.text('Hallo Welt! 👋'), findsOneWidget);
  });
}
