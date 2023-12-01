import 'package:flutter/material.dart';
import 'package:working_structure/anasayfa.dart';
import 'package:working_structure/bottom_nav_kullanimi/bottom_nav_sayfa.dart';
import 'package:working_structure/kullanici_etkilesimi/kullanici_etkilesim_sayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: KullaniciEtkilesimSayfa(),
    );
  }
}
