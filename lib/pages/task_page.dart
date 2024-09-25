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
            SizedBox(height: 10),
            Text(
              'Daftar tugas yang perlu segera diselesaikan.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20),

            // To-Do List Grid View
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                  childAspectRatio: 0.8, // Aspect ratio for cards (adjusted)
                  crossAxisSpacing: 16, // Spacing between columns
                  mainAxisSpacing: 16, // Spacing between rows
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
                      padding: const EdgeInsets.all(12.0), // Adjusted padding
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Use space evenly
                        children: [
                          Icon(
                            Icons.assignment,
                            color: Colors.orange.shade700,
                            size: 40, // Reduced icon size for better fit
                          ),
                          Text(
                            todoList[index]['task']!,
                            style: TextStyle(
                              fontSize: 16, // Reduced font size for task title
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Deadline: ${todoList[index]['deadline']}',
                            style: TextStyle(
                              fontSize: 12, // Reduced font size for deadline
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
