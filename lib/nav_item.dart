import 'package:flutter/material.dart';
import './home.dart';

class NavItem extends StatelessWidget {
  const NavItem(
      {required this.title, required this.page, required this.icon, Key? key})
      : super(key: key);

  final String title;
  final Widget? page;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.white,
          size: 29,
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_right,
          color: Colors.white,
          size: 38,
        ),
        onTap: () {
          if(page != null) {
            Navigator.of(context).pushReplacement(
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    const Home(),
                transitionDuration: Duration.zero,
                reverseTransitionDuration: Duration.zero,
              ),
            );
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => page!,
              ),
            );
          }
        },
      ),
    );
  }
}
