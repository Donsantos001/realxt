import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:realestate/pages/auth/login.dart';
import 'package:realestate/pages/tenant/home.dart';
import 'package:realestate/pages/tenant/profile.dart';
import 'package:realestate/pages/tenant/saved.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _selectedIndex = 0;
  static final List<Widget> _pages = <Widget>[
    const Home(),
    const Saved(),
    const Home(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        color: Theme.of(context).colorScheme.primary,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: GNav(
          gap: 8,
          color: Colors.white,
          activeColor: Theme.of(context).colorScheme.secondary,
          tabBackgroundColor: Colors.white,
          padding: const EdgeInsets.all(10),
          textStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primary,
          ),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.favorite,
              text: "Saved",
            ),
            GButton(
              icon: Icons.message,
              text: "Inbox",
            ),
            // GButton(
            //   icon: Icons.note_add_outlined,
            //   text: "Notes",
            // ),
            GButton(
              icon: Icons.person_outline,
              text: "Profile",
            ),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
