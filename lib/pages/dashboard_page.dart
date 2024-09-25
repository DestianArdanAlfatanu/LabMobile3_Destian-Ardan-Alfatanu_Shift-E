import 'package:flutter/material.dart';
import 'package:tugas3/sidemenu.dart';

class DashboardPage extends StatelessWidget {
  final List<Map<String, String>> todaySchedule = [
    {'time': '08:30', 'event': 'Praktikum Pemrograman Mobile'},
    {'time': '10:40', 'event': 'Matematika Dasar'},
    {'time': '13:00', 'event': 'Uji Kualitas Perangkat Lunak'},
    {'time': '19:00', 'event': 'Kerja Kelompok'},
    {'time': '21:30', 'event': 'Latihan PUBG'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Jadwal Hari Ini',
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
            // Header Welcome
            Text(
              'Jadwal Hari Ini',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade700, 
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Kamis, 26 September 2024',
              style: TextStyle(fontSize: 18, color: Colors.green.shade600),
            ),
            SizedBox(height: 20),

            // Jadwal Hari Ini
            Expanded(
              child: ListView.builder(
                itemCount: todaySchedule.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.orange.shade700, 
                        child: Icon(
                          Icons.event,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        todaySchedule[index]['event']!,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        todaySchedule[index]['time']!,
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      drawer: SideMenu(), // Drawer dengan SideMenu
    );
  }
}
