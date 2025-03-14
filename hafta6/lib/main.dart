import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hafta6/sayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 65, 15, 131),
        ),
        useMaterial3: true,
        textTheme: TextTheme(
          bodyMedium: GoogleFonts.montserrat(fontStyle: FontStyle.italic).copyWith(fontSize: 48),
          labelLarge: GoogleFonts.rockSalt(fontStyle:FontStyle.normal).copyWith(fontSize:48),
        ),
      ),
      home: Sayfa(),
    );
  }
}
