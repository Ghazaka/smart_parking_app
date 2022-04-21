import 'package:flutter/material.dart';
import './profile.dart';
import './nav_item.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).primaryColor,
      child: Column(
        children: const <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                'Username',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          NavItem(
            title: "Profile",
            page: Profile(),
            icon: Icons.person,
          ),
          NavItem(
            title: "History",
            page: null,
            icon: Icons.history,
          ),
          NavItem(
            title: "Language",
            page: null,
            icon: Icons.language,
          ),
        ],
      ),
    );
  }
}
