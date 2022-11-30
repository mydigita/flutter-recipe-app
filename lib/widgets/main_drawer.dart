import 'package:flutter/material.dart';
import '../screens/filter_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, VoidCallback tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 24,
        color: Colors.pink,
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      onTap: tapHandler,
    );
  }

  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.pink,
            height: 100,
            width: double.infinity,
            padding: const EdgeInsets.all(14),
            alignment: Alignment.bottomLeft,
            child: const Text(
              'Settings',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          const SizedBox(height: 16),
          buildListTile(
            'View Meals',
            Icons.restaurant,
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          const Divider(),
          buildListTile(
            'Choose / Filter meal type',
            Icons.settings,
            () {
              Navigator.of(context)
                  .pushReplacementNamed(FilterScreen.routeName);
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}
