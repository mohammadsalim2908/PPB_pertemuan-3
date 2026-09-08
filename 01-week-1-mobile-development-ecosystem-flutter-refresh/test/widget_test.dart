import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/modul_02/academic_dashboard_screen.dart';

void main() {
  testWidgets('Academic Dashboard UI test', (WidgetTester tester) async {
    // Set ukuran layar simulasi test agar tidak overflow
    tester.view.physicalSize = const Size(1080, 1920);
    tester.view.devicePixelRatio = 1.0;

    // Bungkus widget dengan MaterialApp agar kustomisasi Theme dan Directionality berjalan
    await tester.pumpWidget(
      const MaterialApp(
        home: AcademicDashboardScreen(),
      ),
    );

    // Cek apakah judul dashboard/teks utama berhasil di-render
    expect(find.byType(AcademicDashboardScreen), findsOneWidget);

    // Reset ukuran layar simulasi setelah test selesai
    addTearDown(tester.view.resetPhysicalSize);
  });
}