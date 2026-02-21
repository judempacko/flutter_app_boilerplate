import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_app_boilerplate/main.dart';

void main() {
  testWidgets('Boilerplate load test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ProviderScope(child: GodTierApp()));

    // Verify that the title is loaded
    expect(find.text('Boilerplate Prêt 🚀'), findsOneWidget);
  });
}
