import 'package:flutter/material.dart';
import 'package:Ceelaabe/screens/screen1.dart';


void main() {
  runApp(SarifApp());
  
}

class SarifApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}

