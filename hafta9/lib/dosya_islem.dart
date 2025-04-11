import 'dart:convert';
import 'dart:io';

import 'package:hafta9/kayit.dart';

class DosyaIslem {
  static Future<List<Kayit>> oku() async {
    var dosya = File("/Users/emirozturk/Desktop/kayit.json");
    var okunan = await dosya.readAsString();
    if(okunan == ""){
      return [];
    }
    List<dynamic> jsonListe = jsonDecode(okunan);
    var kayitListesi = jsonListe.map((e) => Kayit.fromJson(e)).toList();
    return kayitListesi;
  }

  static void yaz(List<Kayit> liste) {
    var jsonListesi = liste.map((e) => e.toJson()).toList();
    var jsonString = jsonEncode(jsonListesi);
    var dosya = File("/Users/emirozturk/Desktop/kayit.json");
    dosya.writeAsString(jsonString);
  }
}
