import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SideMenu extends StatelessWidget {
  void _logout(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isLoggedIn', false);
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Drawer Header dengan tampilan yang lebih menarik
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green.shade700, // Warna tema hijau
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/user.jpg'), // Placeholder foto pengguna
              backgroundColor: Colors.white,
            ),
            accountName: Text(
              'Destian Ardan Alfatanu',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white, 
              ),
            ),
            accountEmail: Text(
              'destian.alfatanu@mhs.unsoed.ac.id',
              style: TextStyle(fontSize: 16, color: Colors.white), 
            ),
          ),

          // List Menu dengan ikon dan animasi ketika di-tap
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.person, color: Colors.green.shade700),
                  title: Text('Profile'),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/profile');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.schedule, color: Colors.green.shade700),
                  title: Text('Schedule'),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/dashboard');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.task, color: Colors.green.shade700),
                  title: Text('Task'),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/task');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.info, color: Colors.green.shade700),
                  title: Text('About'),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/about');
                  },
                ),
              ],
            ),
          ),

          
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: ListTile(
              leading: Icon(Icons.exit_to_app, color: Colors.red),
              title: Text(
                'Logout',
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {
                _logout(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
