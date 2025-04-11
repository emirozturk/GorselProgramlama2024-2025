import 'package:flutter/material.dart';
import 'package:hafta9/dosya_islem.dart';
import 'package:hafta9/ekleme.dart';
import 'package:hafta9/eleman.dart';
import 'package:hafta9/kayit.dart';
import 'package:hafta9/listeleme.dart';

class Anasayfa extends StatefulWidget {
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int seciliIndex = 0;
  List<Widget> sayfaListesi = [Listeleme(),Ekleme()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sayfaListesi[seciliIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: seciliIndex,
        onTap: (value){
          seciliIndex = value;
          setState(() {});
          },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Anasayfa"),
        BottomNavigationBarItem(icon: Icon(Icons.add_box),label: "Ekleme"),
      ]),
    );
  }
}
