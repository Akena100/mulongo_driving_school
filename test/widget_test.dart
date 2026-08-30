import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mulongo_driving_school/pages/gallery/gallery_page.dart';
import 'package:mulongo_driving_school/pages/privacy/privacy_page.dart';
import 'package:mulongo_driving_school/pages/terms/terms_page.dart';

void main() {
  testWidgets('privacy page renders its main heading', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: PrivacyPage()));

    expect(find.text('Privacy Policy'), findsOneWidget);
  });

  testWidgets('terms page renders its main heading', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: TermsPage()));

    expect(find.text('Terms & Conditions'), findsOneWidget);
  });

  testWidgets('gallery page renders its main heading and image tiles', (
    tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: GalleryPage()));

    expect(find.text('Gallery'), findsOneWidget);
    expect(find.byType(FadeInImage), findsWidgets);
  });
}
