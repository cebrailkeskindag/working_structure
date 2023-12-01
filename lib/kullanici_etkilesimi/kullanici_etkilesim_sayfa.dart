import 'package:flutter/material.dart';

class KullaniciEtkilesimSayfa extends StatefulWidget {
  const KullaniciEtkilesimSayfa({Key? key}) : super(key: key);

  @override
  _KullaniciEtkilesimSayfaState createState() =>
      _KullaniciEtkilesimSayfaState();
}

class _KullaniciEtkilesimSayfaState extends State<KullaniciEtkilesimSayfa> {
  var tfControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kullanıcı Etkileşimi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text("Silmek istiyor musunuz?"),
                      action: SnackBarAction(
                        label: "Evet",
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: const Text("Silindi."),
                          ));
                        },
                      ),
                    ),
                  );
                },
                child: const Text("Snackbar")),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text("Silmek istiyor musunuz?",
                          style: TextStyle(color: Colors.indigoAccent)),
                      backgroundColor: Colors.grey.shade200,
                      action: SnackBarAction(
                        label: "Evet",
                        textColor: Colors.red,
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: const Text(
                              "Silindi.",
                              style: TextStyle(color: Colors.red),
                            ),
                            backgroundColor: Colors.grey.shade200,
                          ));
                        },
                      ),
                    ),
                  );
                },
                child: const Text("Snackbar (Özel)")),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Başlık"),
                          content: const Text("İçerik"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  print("iptal seçildi");
                                  Navigator.pop(context);
                                },
                                child: const Text("İptal")),
                            TextButton(
                                onPressed: () {
                                  print("Tamam seçildi");
                                  Navigator.pop(context);
                                },
                                child: const Text("Tamam")),
                          ],
                        );
                      });
                },
                child: const Text("Alert")),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Kayıt İşlemi"),
                          content: TextField(
                            controller: tfControl,
                            decoration: const InputDecoration(
                                hintText: "Veri Giriniz..."),
                          ),
                          backgroundColor: Colors.grey.shade400,
                          actions: [
                            TextButton(
                                onPressed: () {
                                  print("iptal seçildi");
                                  Navigator.pop(context);
                                },
                                child: const Text("İptal",
                                    style: TextStyle(color: Colors.redAccent))),
                            TextButton(
                                onPressed: () {
                                  print("Alınan veri: ${tfControl.text}");
                                  Navigator.pop(context);
                                  tfControl.text = "";
                                },
                                child: const Text(
                                  "Kaydet",
                                  style: TextStyle(color: Colors.green),
                                )),
                          ],
                        );
                      });
                },
                child: const Text("Alert (Özel)")),
          ],
        ),
      ),
    );
  }
}
