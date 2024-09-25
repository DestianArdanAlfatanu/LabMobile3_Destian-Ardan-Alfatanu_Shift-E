import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tugas3/pages/dashboard_page.dart';
import 'package:tugas3/pages/login_page.dart';
import 'package:tugas3/pages/profile_page.dart';
import 'package:tugas3/pages/task_page.dart';
import 'package:tugas3/pages/about_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;

  MyApp({required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.green, 
        scaffoldBackgroundColor: Colors.green.shade50, 
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.green.shade700, 
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
            color: Colors.black87, 
          ),
          titleMedium: TextStyle(
            fontSize: 16,
            color: Colors.grey.shade700, 
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green.shade700, 
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            textStyle: TextStyle(fontSize: 18, color: Colors.white), 
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: isLoggedIn ? '/dashboard' : '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/dashboard': (context) => DashboardPage(),
        '/profile': (context) => ProfilePage(),
        '/task': (context) => TaskPage(),
        '/about': (context) => AboutPage(),
      },
    );
  }
}
