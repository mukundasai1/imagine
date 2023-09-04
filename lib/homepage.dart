import 'package:flutter/material.dart';
import 'package:imagine/pages/home.dart';
import 'package:imagine/pages/new.dart';
import 'package:imagine/pages/profile.dart';
import 'package:imagine/pages/reels.dart';
import 'package:imagine/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;
  void _navBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _navbarChildren = const [
    Home(),
    Search(),
    New(),
    Reels(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Imagine!",
            ),
            Row(
              children: [
                Icon(
                  Icons.favorite_border,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.chat_bubble_outline_rounded,
                ),
              ],
            )
          ],
        ),
      ),
      body: _navbarChildren[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _navBar,
        currentIndex: _selectedindex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
            ),
            label: "New",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie_creation_outlined,
            ),
            label: "Reels",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_rounded,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
