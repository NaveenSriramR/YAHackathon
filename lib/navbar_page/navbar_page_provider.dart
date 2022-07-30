import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../cart_page/cart_page_home.dart';
import '../home_page.dart';
import '../search_function/search_screen.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({Key? key}) : super(key: key);

  @override
  _NavBarWidgetState createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  int _currentIndex = 0;
  final tabs = [const HomePage(), SearchPage(), const CartPage(), Container()];
  Color? color = const Color(0xFFff9900);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Theme.of(context).primaryColor,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: const FaIcon(FontAwesomeIcons.house),
            title: Text(
              'Home',
              style: GoogleFonts.montserrat(
                fontSize: 15,
              ),
            ),
            activeColor: color!,
            inactiveColor: color!,
          ),
          BottomNavyBarItem(
            icon: const FaIcon(FontAwesomeIcons.searchengin),
            title: Text(
              'Search',
              style: GoogleFonts.montserrat(
                fontSize: 15,
              ),
            ),
            activeColor: color!,
            inactiveColor: color!,
          ),
          BottomNavyBarItem(
            icon: const FaIcon(FontAwesomeIcons.cartPlus),
            title: Text(
              'Your Cart',
              style: GoogleFonts.montserrat(
                fontSize: 15,
              ),
            ),
            activeColor: color!,
            inactiveColor: color!,
          ),
          BottomNavyBarItem(
            icon: const FaIcon(FontAwesomeIcons.person),
            title: Text(
              'Profile',
              style: GoogleFonts.montserrat(
                fontSize: 15,
              ),
            ),
            activeColor: color!,
            inactiveColor: color!,
          ),
        ],
        animationDuration: const Duration(milliseconds: 400),
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
