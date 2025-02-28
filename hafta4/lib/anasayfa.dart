import 'package:flutter/material.dart';
import 'package:hafta4/memleket_secim_ekrani.dart';

class Anasayfa extends StatefulWidget {
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var adSoyadController = TextEditingController();

  var memleketController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            TextField(
              controller: adSoyadController,
              decoration: InputDecoration(
                hintText: "Ad Soyad",
              ),
            ),
            TextField(
              controller: memleketController,
              decoration: InputDecoration(
                hintText: "Memleket",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MemleketSecimEkrani(),
                        ),
                      ).then(
                        (value) => memleketController.text = value,
                      );
                    });
                  },
                  child: Text("Memleket Seç")),
            )
          ],
        ),
      ),
    );
  }
}
