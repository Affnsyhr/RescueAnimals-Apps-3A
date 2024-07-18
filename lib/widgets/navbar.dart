import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/home');
            break;
          case 1:
            Navigator.pushNamed(context, '/chat_admin');
            break;
          case 2:
            Navigator.pushNamed(context, '/notifications');
            break;
          case 3:
            Navigator.pushNamed(context, '/settings');
            break;
        }
      },
      unselectedItemColor: Colors.black, 
      selectedItemColor: Colors.black, 
      showUnselectedLabels: true, 
      showSelectedLabels: true, 
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.blue),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat, color: Colors.green),
          label: 'Chat Admin',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications, color: Colors.orange),
          label: 'Notifikasi',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings, color: Colors.purple),
          label: 'Pengaturan',
        ),
      ],
    );
  }
}
