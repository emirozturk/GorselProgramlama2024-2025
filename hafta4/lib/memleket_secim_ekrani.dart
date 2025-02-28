import 'package:flutter/material.dart';

class MemleketSecimEkrani extends StatefulWidget {
  @override
  State<MemleketSecimEkrani> createState() => _MemleketSecimEkraniState();
}

class _MemleketSecimEkraniState extends State<MemleketSecimEkrani> {
  var seciliMemleket = "";
  var seciliIndex = -1;
  var memleketListesi = [
    "Konya",
    "Sivas",
    "Trabzon",
    "İzmir",
    "Çanakkale",
    "Sinop",
    "Manisa",
    "Kastamonu",
    "Samsun",
    "Erzurum",
    "Erzincan",
    "Gümüşhane",
    "İstanbul",
    "Ankara",
    "Bursa",
    "Tekirdağ",
    "Kırklareli",
    "Edirne",
    "Kocaeli",
    "Adana",
    "Yozgat"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: memleketListesi.length,
              itemBuilder: (context, i) => ListTile(
                title: Text(memleketListesi[i]),
                onTap: () {
                  setState(() {
                    seciliMemleket = memleketListesi[i];
                    seciliIndex = i;
                  });
                },
                selected: i == seciliIndex,
                selectedTileColor: Colors.blue,
                selectedColor: Colors.white,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context,seciliMemleket);
            },
            child: Text("Memleketi Onayla"),
          ),
        ],
      ),
    );
  }
}
