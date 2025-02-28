import 'package:flutter/material.dart';
import 'package:hafta4/veri.dart';

class KullaniciListesi extends StatefulWidget {
  @override
  State<KullaniciListesi> createState() => _KullaniciListesiState();
}

class _KullaniciListesiState extends State<KullaniciListesi> {
  var kullaniciListesi = Veriler.kullanicilar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: ListView.builder(
          itemCount: kullaniciListesi.length,
          itemBuilder: (context, i) => ListTile(
            title: Text(kullaniciListesi[i].adSoyad),
            trailing: Text(kullaniciListesi[i].memleket),
          ),
        ),
      ),
    );
  }
}
