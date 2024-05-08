import 'package:flutter/material.dart';
import 'package:atmakitchen_mobile/pages/profile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text(
          'Ini adalah halaman utama',
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigasi ke halaman ProfilePage saat tombol ditekan
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProfilePage(
                      nama:
                          'Nama Pengguna', // Isi dengan data pengguna yang sesuai
                      noTelepon: '081234567890',
                      username: 'username',
                      password: 'password',
                      email: 'user@example.com',
                    )),
          );
        },
        child: Icon(Icons.person),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Navigasi ke halaman HomeScreen saat tombol ditekan
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // Tambahkan fungsi untuk menuju halaman pengaturan
              },
            ),
          ],
        ),
      ),
    );
  }
}
