import 'package:flutter/material.dart';
import 'package:hafta9/kayit.dart';

class Eleman extends StatelessWidget{
  Kayit kayit;
  Eleman(this.kayit);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            width: 150,
            height: 150,
            child: Image.network(kayit.link),
          ),          
          Text(kayit.isim),
          Text(kayit.cumle),
        ],
      ),
    );
  }

}