import 'package:flutter/material.dart';
import 'package:working_structure/kisiler.dart';
import 'package:working_structure/oyun_ekrani.dart';

class Anasayfa extends StatefulWidget {
  Anasayfa({Key? key}) : super(key: key);

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int sayac = 0;

  @override
  //Uygulama açılırken çalışır sonra hiç çalışmaz.
  //Kurulum kodları için kullanılır.
  void initState() {
    super.initState();
    print("initState() çalıştı.");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sonuc : $sayac"),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  sayac = sayac + 100;
                });
              },
              child: Text("Tıkla"),
            ),
            ElevatedButton(
              onPressed: () {
                var kisi = Kisiler(ad: "Ali", yas: 23, boy: 1.79, bekar: true);
                Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OyunEkrani(kisi: kisi)))
                    .then((value) {
                  print("Anasayfaya dönüldü.");
                });
              },
              child: Text("Başla"),
            ),
          ],
        ),
      ),
    );
  }
}
