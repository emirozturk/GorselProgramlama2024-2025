import 'package:flutter/material.dart';
import 'package:hafta9/dosya_islem.dart';
import 'package:hafta9/eleman.dart';
import 'package:hafta9/kayit.dart';

class Listeleme extends StatefulWidget {
  List<Kayit> kayitlar = [];
  @override
  State<Listeleme> createState() => _ListelemeState();
}

class _ListelemeState extends State<Listeleme> {
  bool isFirst = true;
  @override
  Widget build(BuildContext context) {
    if (isFirst) {
      DosyaIslem.oku().then((value) {
        widget.kayitlar = value;
        setState(() {});
      });
      isFirst = false;
    }
    return Column(
      children: [
        TextField(),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: widget.kayitlar.length,
            itemBuilder: (context, index) => Eleman(widget.kayitlar[index]),
          ),
        ),
      ],
    );
  }
}
