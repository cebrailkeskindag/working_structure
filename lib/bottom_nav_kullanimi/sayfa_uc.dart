import 'package:flutter/material.dart';

class SayfaUc extends StatefulWidget {
  const SayfaUc({ Key? key }) : super(key: key);

  @override
  _SayfaUcState createState() => _SayfaUcState();
}

class _SayfaUcState extends State<SayfaUc> {
  @override
  Widget build(BuildContext context) {
    return const Center(
child: Text("Sayfa Üç", style: TextStyle(fontSize: 30, color: Colors.black),),
    );
  }
}