import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:practice/main.dart';

void main() {
  testWidgets('Display page test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MusicApp());

    // Verify that the app bar title is correct.
    expect(find.text('Find Music'), findsOneWidget);

    // Verify that the category dropdown is present.
    expect(find.byType(DropdownButton), findsOneWidget);

    // Verify that the music list is displayed.
    expect(find.byType(ListView), findsOneWidget);

    // Verify that the music play icon is present for each music item.
    expect(find.byIcon(Icons.play_arrow), findsNWidgets(10));

    // Verify that the bottom banner is displayed.
    expect(find.byType(Row), findsOneWidget);

    // Verify that the bottom banner has three icons.
    expect(find.byIcon(Icons.search), findsOneWidget);
    expect(find.byIcon(Icons.person), findsOneWidget);
    expect(find.byIcon(Icons.home), findsOneWidget);
  });
}
