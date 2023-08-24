import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../constants.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  String email = '';
  getEmail() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    email = prefs.getString('email') ?? "";
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getEmail();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          decoration: const BoxDecoration(
            color: kPrimaryColor,
          ),
          accountName: const Text(
            "User",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          accountEmail: Text(
            email,
          ),
          currentAccountPicture: SizedBox(
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: const Image(
                image: AssetImage('assets/images/logoo.jpeg'),
              ),
            ),
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.home,
          ),
          title: const Text('Home'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.category_outlined,
          ),
          title: const Text('Categories'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.person,
          ),
          title: const Text('Developers'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.info,
          ),
          title: const Text('About us'),
          onTap: () {},
        ),
      ],
    );
  }
}
