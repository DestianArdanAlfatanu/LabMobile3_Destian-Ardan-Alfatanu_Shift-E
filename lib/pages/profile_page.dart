import 'package:flutter/material.dart';
import 'package:tugas3/sidemenu.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green.shade700, 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Judul Halaman
            Text(
              'Profil Saya',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade700, 
              ),
            ),
            SizedBox(height: 30),

            // Avatar Pengguna
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.orange.shade700, 
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 30),

            // Informasi Pengguna
            Text(
              'Nama: Destian Ardan Alfatanu',
              style: TextStyle(fontSize: 18, color: Colors.black87),
            ),
            SizedBox(height: 10),
            Text(
              'NIM: H1D022045',
              style: TextStyle(fontSize: 18, color: Colors.black87),
            ),
            SizedBox(height: 10),
            Text(
              'Shift Baru: E',
              style: TextStyle(fontSize: 18, color: Colors.black87),
            ),
            SizedBox(height: 30),

            
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  
                },
                icon: Icon(Icons.edit, color: Colors.white),
                label: Text(
                  'Edit Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade700, 
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: SideMenu(), 
    );
  }
}
