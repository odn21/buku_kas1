import 'package:flutter/material.dart';
import 'package:laporan/beranda.dart';
import 'package:laporan/laporan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laporan',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/laporan': (context) => ReportPage(),
        '/beranda': (context) => HomePage(),
      },
    );
  }
}
