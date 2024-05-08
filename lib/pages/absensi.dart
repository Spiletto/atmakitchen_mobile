// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// void main() {
//   runApp(AbsensiApp());
// }

// class Karyawan {
//   final int id;
//   final String nama;

//   Karyawan(this.id, this.nama);
// }

// class AbsensiApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Absensi Karyawan',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: AbsensiScreen(),
//     );
//   }
// }

// class AbsensiScreen extends StatefulWidget {
//   @override
//   _AbsensiScreenState createState() => _AbsensiScreenState();
// }

// class _AbsensiScreenState extends State<AbsensiScreen> {
//   List<Karyawan> karyawanList = [];

//   @override
//   void initState() {
//     super.initState();
//     fetchData();
//   }

//   Future<void> fetchData() async {
//     final response =
//         await http.get(Uri.parse('http://localhost:8000/karyawan'));
//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body) as List;
//       setState(() {
//         karyawanList = data
//             .map((item) => Karyawan(item['id_karyawan'], item['nama_karyawan']))
//             .toList();
//       });
//     } else {
//       throw Exception('Failed to load data');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Absensi Karyawan'),
//       ),
//       body: AbsensiList(karyawanList),
//     );
//   }
// }

// class AbsensiList extends StatefulWidget {
//   final List<Karyawan> karyawanList;

//   AbsensiList(this.karyawanList);

//   @override
//   _AbsensiListState createState() => _AbsensiListState();
// }

// class _AbsensiListState extends State<AbsensiList> {
//   List<String> statusAbsensi = ['Hadir', 'Tidak Hadir'];
//   Map<String, String> hadir = {};

//   @override
//   void initState() {
//     super.initState();
//     // Set default status hadir untuk setiap karyawan
//     for (var karyawan in widget.karyawanList) {
//       hadir[karyawan.nama] = 'Hadir';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: widget.karyawanList.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Text(
//               widget.karyawanList[index].nama), // Menampilkan nama karyawan
//           trailing: DropdownButton<String>(
//             value: hadir[widget.karyawanList[index].nama],
//             items: statusAbsensi.map((String value) {
//               return DropdownMenuItem<String>(
//                 value: value,
//                 child: Text(value),
//               );
//             }).toList(),
//             onChanged: (String? newValue) {
//               setState(() {
//                 hadir[widget.karyawanList[index].nama] = newValue!;
//               });
//             },
//           ),
//         );
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';

class Employee {
  final String name;

  Employee({required this.name});
}

class MyApp extends StatelessWidget {
  final List<Employee> employees = [
    // Employee(name: 'John Doe'),
    // Employee(name: 'Jane Smith'),
    // Employee(name: 'Michael Johnson'),
    // Employee(name: 'Emily Davis'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Hadir',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AttendanceList(employees: employees),
    );
  }
}

class AttendanceList extends StatefulWidget {
  final List<Employee> employees;

  AttendanceList({required this.employees});

  @override
  _AttendanceListState createState() => _AttendanceListState();
}

class _AttendanceListState extends State<AttendanceList> {
  Map<String, String> attendance = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Hadir'),
      ),
      body: ListView.builder(
        itemCount: widget.employees.length,
        itemBuilder: (context, index) {
          final employee = widget.employees[index];
          return ListTile(
            title: Text(employee.name),
            trailing: DropdownButton<String>(
              value: attendance[employee.name],
              onChanged: (newValue) {
                setState(() {
                  attendance[employee.name] = newValue!;
                });
              },
              items: <String>['Hadir', 'Alfa'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Simpan data absensi ke database atau server
          print(attendance);
        },
        child: Icon(Icons.save),
      ),
    );
  }
}
