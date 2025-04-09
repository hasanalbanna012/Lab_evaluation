import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.indigo),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(radius: 25, child: Icon(Icons.person)),
                SizedBox(height: 10),
                Text('Hasan Al Banna', style: TextStyle(color: Colors.white)),
                Text('banna15-5064@diu.edu.bd',
                    style: TextStyle(color: Colors.white70)),
              ],
            ),
          ),
          DrawerItem(icon: Icons.dashboard, title: 'Dashboard'),
          DrawerItem(icon: Icons.person, title: 'Profile'),
          DrawerItem(icon: Icons.announcement, title: 'DIU Notice'),
          DrawerItem(icon: Icons.directions_bus, title: 'Bus Service'),
          DrawerItem(icon: Icons.card_giftcard, title: 'Promo Code'),
          DrawerItem(icon: Icons.location_on, title: 'Agent Location'),
          DrawerItem(icon: Icons.share, title: 'Contact Sharing'),
          DrawerItem(icon: Icons.settings, title: 'Settings'),
          DrawerItem(icon: Icons.help, title: 'Help'),
          DrawerItem(icon: Icons.info, title: 'About'),
          DrawerItem(icon: Icons.question_answer, title: 'FAQ'),
          DrawerItem(icon: Icons.logout, title: 'Sign Out'),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;

  DrawerItem({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.indigo),
      title: Text(title),
      onTap: () => Navigator.pop(context),
    );
  }
}
