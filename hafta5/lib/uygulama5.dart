import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Uygulama5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: Container(
                  color: Colors.blue,
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
