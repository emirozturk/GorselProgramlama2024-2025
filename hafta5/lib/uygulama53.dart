import 'dart:io';

import 'package:flutter/material.dart';

class Uygulama53 extends StatefulWidget {
  @override
  State<Uygulama53> createState() => _Uygulama53State();
}

class _Uygulama53State extends State<Uygulama53> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          RichText(
            text: TextSpan(
              text: "Merhaba ",
              style: TextStyle(color: Colors.black, fontSize: 20),
              children: [
                TextSpan(
                  text: "Dünya",
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                TextSpan(
                  text: "Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya Dünya ",
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
