import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sayfa extends StatefulWidget {
  State<Sayfa> createState() => _SayfaState();
}

class _SayfaState extends State<Sayfa> {
  var degerC = TextEditingController();
  var cikti = "";
  degistir() {
    setState(() {
      cikti = degerC.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Uygulama",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: Column(
          children: [
            TextField(
              controller: degerC,
              style: Theme.of(context).textTheme.bodyMedium,
              decoration: InputDecoration(
                fillColor: Theme.of(context).colorScheme.surface,
              ),
            ),
            ElevatedButton(
              onPressed: degistir,
              child: Text(
                "Değiştir",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Text(
              "Ekrandaki değer: $cikti",
              style: Theme.of(context).textTheme.labelLarge,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sayfa(),
                  ),
                );
              },
              child: Text("Yeni sayfa",
                  style: GoogleFonts.rockSalt(fontStyle: FontStyle.normal)
                      .copyWith(fontSize: 48)),
            )
          ],
        ));
  }
}
