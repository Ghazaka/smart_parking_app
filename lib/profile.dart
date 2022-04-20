import 'package:flutter/material.dart';
import './sidebar.dart';
import './profile_item.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 242, 253),
      drawer: const SideBar(),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 15),
            child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.blue,
              ),
              iconSize: 43,
            ),
          ),
          const SizedBox(
            height: 38,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: const Icon(
                Icons.person,
                color: Colors.white,
                size: 150,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(30, 35, 0, 0),
            child: Column(
              children: const [
                ProfileItem("name", "Ghaza Kaysan Akmal"),
                ProfileItem("address", "My Address"),
                ProfileItem("email", "akmalkay12@gmail.com"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
