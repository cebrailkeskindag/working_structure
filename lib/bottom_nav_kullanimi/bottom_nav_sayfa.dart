import 'package:flutter/material.dart';
import 'package:working_structure/bottom_nav_kullanimi/sayfa_bir.dart';
import 'package:working_structure/bottom_nav_kullanimi/sayfa_iki.dart';
import 'package:working_structure/bottom_nav_kullanimi/sayfa_uc.dart';

class BottomNavSayfa extends StatefulWidget {
  const BottomNavSayfa({Key? key}) : super(key: key);

  @override
  _BottomNavSayfaState createState() => _BottomNavSayfaState();
}

class _BottomNavSayfaState extends State<BottomNavSayfa> {
  int secilenIndeks = 0;
  var sayfalar = [const SayfaBir(), const SayfaIki(), const SayfaUc()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bottom Navigation",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: sayfalar[secilenIndeks],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.looks_one), label: "Bir"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two), label: "İki"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3), label: "Üç"),
        ],
        currentIndex: secilenIndeks,
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.greenAccent,
        onTap: (indeks) {
          setState(() {
            secilenIndeks = indeks;
          });
        },
      ),
    );
  }
}
