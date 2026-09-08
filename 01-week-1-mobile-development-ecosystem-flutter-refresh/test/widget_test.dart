// This is a basic Flutter widget test.

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('Profile screen UI test', (WidgetTester tester) async {
    // Build app dan jalankan frame pertama
    await tester.pumpWidget(const PoliwangiProfileApp());

    // Verifikasi bahwa judul AppBar muncul
    expect(find.text('Profil Mahasiswa'), findsOneWidget);

    // Verifikasi bahwa Nama Mahasiswa muncul
    expect(find.text('Mohammad Salim'), findsOneWidget);

    // Verifikasi bahwa NIM Mahasiswa muncul
    expect(find.text('NIM: 362558302127'), findsOneWidget);
  });
}