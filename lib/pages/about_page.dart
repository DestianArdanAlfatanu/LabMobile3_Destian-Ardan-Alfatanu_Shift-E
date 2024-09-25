import 'package:flutter/material.dart';
import 'package:tugas3/sidemenu.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green.shade700, 
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Icon(
                  Icons.info_outline,
                  size: 100,
                  color: Colors.orange.shade700, 
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Tentang Aplikasi',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade700, 
                  ),
                ),
              ),
              SizedBox(height: 20),
              Divider(color: Colors.orange.shade700, thickness: 2), 
              SizedBox(height: 20),
              Text(
                'Versi:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade700, 
                ),
              ),
              SizedBox(height: 5),
              Text(
                '1.0.0',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(height: 20),
              Text(
                'Deskripsi:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade700, 
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Dibuat untuk tugas Praktikum Pemrograman Mobile tentang Aplikasi dengan flutter yang mengimplementasikan routes, side menu, login, dan local storage.',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(height: 20),
              Text(
                'Kontak:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade700,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.email, color: Colors.orange.shade700),
                  SizedBox(width: 10),
                  Text(
                    'destian.alfatanu@mhs.unsoed.ac.id',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.phone, color: Colors.orange.shade700),
                  SizedBox(width: 10),
                  Text(
                    '085156615935',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.camera_alt, color: Colors.orange.shade700),
                  SizedBox(width: 10),
                  Text(
                    '@sztcym_',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(color: Colors.orange.shade300, thickness: 2),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Terimakasih!',
                  style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    color: Colors.green.shade700, 
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: SideMenu(),
    );
  }
}
