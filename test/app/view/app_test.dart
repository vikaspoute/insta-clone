import 'package:flutter_test/flutter_test.dart';
import 'package:instagram_clone/app/app.dart';
import 'package:instagram_clone/counter/counter.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const AppView());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
