import 'package:flutter/material.dart';
import 'package:hafta2/login_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
            /*SingleChildScrollView(
          child: Column(
            children: [
              LoginPage(),
              LoginPage(),
               LoginPage(),
               LoginPage(),
            ],
          ),
          */
            LoginPage(),
      ),
    );
  }
}
