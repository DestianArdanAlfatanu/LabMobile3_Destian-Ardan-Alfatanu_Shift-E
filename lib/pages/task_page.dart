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
            // Header Tasks
            Text(
              'Tugas Terdekat',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade700,
              ),
            ),
            SizedBox(height: 20),

            // To-Do List
            Expanded(
              child: ListView.builder(
                itemCount: todoList.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: Icon(
                        Icons.assignment,
                        color: Colors.orange.shade700, // Warna ikon oranye
                        size: 30,
                      ),
                      title: Text(
                        todoList[index]['task']!,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                      subtitle: Text(
                        'Deadline: ${todoList[index]['deadline']}',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                      ),
                      trailing: Icon(
                        Icons.check_circle_outline,
                        color: Colors.green.shade600,
                        size: 30,
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
