import 'package:flutter/material.dart';

import 'greet.dart';

import 'login.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Aa Gaye Phirse',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Login'),
            onTap: () {
              Navigator.pop(context); // Close drawer
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          ),
          ListTile(
            title: Text('Greet'),
            onTap: () {
              Navigator.pop(context); // Close drawer
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GreetScreen()));
            },
          ),
          ListTile(
            title: Text('Close'),
            onTap: () {
              Navigator.pop(context); // Close drawer
            },
          ),
        ],
      ),
    );
  }
}
