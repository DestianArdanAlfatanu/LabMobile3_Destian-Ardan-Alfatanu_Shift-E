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
            fontSize: 24, // Adjusted font size for mobile
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0), // Reduced padding for mobile
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Message
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [Colors.green.shade700, Colors.green.shade500],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              padding: EdgeInsets.all(12), // Reduced padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Selamat Datang!',
                    style: TextStyle(
                      fontSize: 20, // Adjusted font size
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Kamis, 26 September 2024',
                    style: TextStyle(
                      fontSize: 16, // Adjusted font size
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Today's Schedule Header
            Text(
              'Jadwal Hari Ini',
              style: TextStyle(
                fontSize: 22, // Adjusted font size
                fontWeight: FontWeight.bold,
                color: Colors.green.shade700,
              ),
            ),
            SizedBox(height: 10),

            // Schedule List
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.2, // Adjusted aspect ratio for better fit
                ),
                itemCount: todaySchedule.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(12), // Reduced padding
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 25, // Adjusted size for mobile
                            backgroundColor: Colors.orange.shade700,
                            child: Icon(
                              Icons.event,
                              color: Colors.white,
                              size: 24, // Adjusted icon size
                            ),
                          ),
                          SizedBox(height: 8), // Reduced space
                          Text(
                            todaySchedule[index]['event']!,
                            style: TextStyle(
                              fontSize: 16, // Adjusted font size
                              color: Colors.black87,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            todaySchedule[index]['time']!,
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14, // Adjusted font size
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      drawer: SideMenu(), // Drawer with SideMenu
    );
  }
}
