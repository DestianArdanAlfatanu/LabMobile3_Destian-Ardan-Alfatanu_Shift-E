import 'package:flutter/material.dart';
import 'package:tugas3/sidemenu.dart';

class TaskPage extends StatelessWidget {
  final List<Map<String, String>> todoList = [
    {'task': 'Tugas Praktikum', 'deadline': '2024-09-25'},
    {'task': 'Laporan KP', 'deadline': '2024-09-30'},
    {'task': 'Laporan UKPL', 'deadline': '2024-09-26'},
    {'task': 'Kuis Keamanan Informasi', 'deadline': '2024-09-25'},
    {'task': 'Tugas Pemrograman Mobile', 'deadline': '2024-10-01'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tasks',
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
            Text(
              'Tugas Terdekat',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade700,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Daftar tugas yang perlu segera diselesaikan.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: todoList.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 5,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.assignment,
                            color: Colors.orange.shade700,
                            size: 40,
                          ),
                          Text(
                            todoList[index]['task']!,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Deadline: ${todoList[index]['deadline']}',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[700],
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
      drawer: SideMenu(),
    );
  }
}
