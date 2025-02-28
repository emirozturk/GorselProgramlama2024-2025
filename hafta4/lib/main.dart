import 'package:flutter/material.dart';
import 'package:hafta4/anasayfa.dart';
import 'package:hafta4/memleket_secim_ekrani.dart';
import 'package:hafta4/navigasyon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hafta4',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Navigasyon(),
    );
  }
}

