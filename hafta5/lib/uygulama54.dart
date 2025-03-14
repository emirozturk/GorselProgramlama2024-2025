import 'dart:io';

import 'package:flutter/material.dart';

class Uygulama54 extends StatefulWidget {
  @override
  State<Uygulama54> createState() => _Uygulama54State();
}

class _Uygulama54State extends State<Uygulama54> {
  var liste = ["Eleman1", "Eleman2", "Eleman3", "Eleman4", "Eleman5"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.builder(
          itemCount: liste.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              //SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 500),
          itemBuilder: (context, index) => GridTile(
            child: Text(
              liste[index],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 42),
            ),
          ),
        ),
      ),
    );
  }
}
/* KART ÖRNEĞİ
Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Card(
              color: Colors.white,
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      "Header",
                      style: TextStyle(fontSize: 48),
                    ),
                    Text(
                      "Content Content Content",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
        */
