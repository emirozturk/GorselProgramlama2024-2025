import 'package:flutter/material.dart';
import 'package:hafta9/dosya_islem.dart';
import 'package:hafta9/kayit.dart';

class Ekleme extends StatefulWidget {

  @override
  State<Ekleme> createState() => _EklemeState();
}

class _EklemeState extends State<Ekleme> {
  var isimC = TextEditingController();
  var cumleC = TextEditingController();
  var linkC = TextEditingController();
  void ekle() async{
    var liste = await DosyaIslem.oku();
    var yeniKayit = Kayit(
      isimC.text,
      linkC.text,
      cumleC.text,
    );
    liste.add(yeniKayit);
    DosyaIslem.yaz(liste);
    isimC.clear();
    cumleC.clear();
    linkC.clear();
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(controller: isimC,),
        TextField(controller: cumleC),
        TextField(controller: linkC),
        ElevatedButton(onPressed: ekle, child: Text("Ekle"),),
      ],
    );
  }
}