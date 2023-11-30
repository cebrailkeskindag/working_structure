import 'package:flutter/material.dart';
import 'package:working_structure/anasayfa.dart';
import 'package:working_structure/oyun_ekrani.dart';

class SonucEkrani extends StatefulWidget {
  const SonucEkrani({Key? key}) : super(key: key);

  @override
  _SonucEkraniState createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuç Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);//Bir önceki sayfaya dönmemizi sağlar.
              },
              child: Text("Geri Dön"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);//İlk sayfaya kadar geri git.
              },
              child: Text("Anasayfaya Geri Dön"),
            ),
          ],
        ),
      ),
    );
  }
}
