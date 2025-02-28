import 'package:flutter/material.dart';
import 'package:hafta4/anasayfa.dart';
import 'package:hafta4/kullanici_listesi.dart';

class Navigasyon extends StatefulWidget {
  @override
  State<Navigasyon> createState() => _NavigasyonState();
}

class _NavigasyonState extends State<Navigasyon> {
  var sayfaListesi = [Anasayfa(), KullaniciListesi()];
  var seciliIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sayfaListesi[seciliIndex],
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: [
            TextButton(
                child: Text("Menü 1"),
                onPressed: () {
                  setState(() {
                    seciliIndex=1;
                  });
                }),
            Text("Menü 2"),
            Text("Menü 3"),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: seciliIndex,
        onTap: (value) {
          setState(() {
            seciliIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Anasayfa",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Kullanıcılar",
            icon: Icon(Icons.people),
          )
        ],
      ),
    );
  }
}
