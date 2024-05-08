import 'package:atmakitchen_mobile/pages/absensi.dart';
import 'package:atmakitchen_mobile/pages/profile.dart';
import 'package:flutter/material.dart';
import "package:atmakitchen_mobile/pages/login.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AttendanceList(
        employees: [
          Employee(name: 'John Doe'),
          Employee(name: 'Jane Smith'),
          Employee(name: 'Michael Johnson'),
          Employee(name: 'Emily Davis'),



          
        ],
        // nama: 'John Doe',
        // noTelepon: '081234567890',
        // username: 'johndoe123',
        // password: 'password123',
        // email: 'johndoe@example.com',
      ),
    );
  }
}
