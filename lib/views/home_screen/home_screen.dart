// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_assignment/configs/colors/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/user_profile_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('images/icons/demo1.png'),
            const SizedBox(
              width: 8,
            ),
            Text(
              'Flutter Task',
              style: GoogleFonts.notoSerifBengali(
                  textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColor.black,
              )),
            ),
          ],
        ),
        actions: [
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: Image.asset(
                'images/icons/notifications.png',
                height: 24,
                width: 24,
              ),
            ),
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: const Column(
        children: [
          UserProfileCard(),
        ],
      ),
    );
  }
}

Widget CustomDrawer() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Fluter Test'),
        ),
        ListTile(
          leading: const Icon(
            Icons.home,
          ),
          title: const Text('Page 1'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.train,
          ),
          title: const Text('Page 2'),
          onTap: () {},
        ),
      ],
    ),
  );
}
