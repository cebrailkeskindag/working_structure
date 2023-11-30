import 'package:flutter/material.dart';

class SayfaIki extends StatefulWidget {
  const SayfaIki({ Key? key }) : super(key: key);

  @override
  _SayfaIkiState createState() => _SayfaIkiState();
}

class _SayfaIkiState extends State<SayfaIki> {
  @override
  Widget build(BuildContext context) {
    return const Center(
child: Text("Sayfa İki", style: TextStyle(fontSize: 30, color: Colors.black),),
    );
  }
}