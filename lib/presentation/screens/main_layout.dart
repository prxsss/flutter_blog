import 'package:blog_app/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:blog_app/presentation/screens/search_screen.dart';
import 'package:blog_app/presentation/screens/profile_screen.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key, required this.onLogoutPressed});

  final void Function() onLogoutPressed;

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  var activeScreen = 0;

  @override
  Widget build(BuildContext context) {
    var appBarTitle = 'Home';
    Widget screenWidget = const HomeScreen();

    if (activeScreen == 1) {
      appBarTitle = 'Search';
      screenWidget = const SearchScreen();
    }

    if (activeScreen == 2) {
      appBarTitle = 'Profile';
      screenWidget = const ProfileScreen();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          activeScreen == 2
              ? IconButton(
                onPressed: () {
                  widget.onLogoutPressed();
                },
                icon: const FaIcon(FontAwesomeIcons.rightFromBracket, size: 20),
              )
              : const SizedBox(),
        ],
      ),
      body: screenWidget,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: BottomNavigationBar(
          onTap: (i) {
            setState(() {
              activeScreen = i;
            });
          },
          currentIndex: activeScreen,
          showSelectedLabels: false,
          showUnselectedLabels: false,

          items: const [
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house),
              label: 'Home',
              activeIcon: FaIcon(FontAwesomeIcons.house, color: Colors.black),
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
              label: 'Search',
              activeIcon: FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.user),
              label: 'Profile',
              activeIcon: FaIcon(
                FontAwesomeIcons.solidUser,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
