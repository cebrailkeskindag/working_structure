import 'package:flutter/material.dart';
import 'package:working_structure/kisiler.dart';
import 'package:working_structure/sonuc_ekrani.dart';

class OyunEkrani extends StatefulWidget {
  Kisiler kisi;
  OyunEkrani({required this.kisi});

  @override
  _OyunEkraniState createState() => _OyunEkraniState();
}

class _OyunEkraniState extends State<OyunEkrani> {
  Future<bool> geriDonusTusu(BuildContext context) async {
    print("Navigation geri tuşu seçildi.");
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Oyun Ekranı"),
        leading: IconButton(
          onPressed: () {
            print("Appbar geri tuşu seçildi");
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: WillPopScope(
        onWillPop: () => geriDonusTusu(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                  "${widget.kisi.ad} - ${widget.kisi.yas} -${widget.kisi.boy} -${widget.kisi.bekar}"),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      //pushReplacement-> kullanarak sayfaya geri gelmeyi engelleyebiliriz.
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SonucEkrani()));
                },
                child: Text("Bitti"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
