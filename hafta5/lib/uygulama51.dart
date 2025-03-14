import 'dart:io';

import 'package:flutter/material.dart';

class Uygulama51 extends StatefulWidget {
  @override
  State<Uygulama51> createState() => _Uygulama51State();
}

class _Uygulama51State extends State<Uygulama51> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Center(
            child: Image.file(
              File("/Users/emirozturk/Desktop/MURAT.JPEG"),
            ),
          ),
        ]),
      ),
    );
  }
}
