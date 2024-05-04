import 'package:flutter/material.dart';
import "package:atmakitchen_mobile/pages/login.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(), // Set home ke LoginPage
    );
  }
}
