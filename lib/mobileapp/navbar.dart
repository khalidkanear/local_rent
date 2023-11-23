import 'package:flutter/material.dart';
import 'package:local_rent/mobileapp/addlisting.dart';
import 'package:local_rent/mobileapp/addtimig.dart';
import 'package:local_rent/mobileapp/allcategories/allcategories_page.dart';
import 'package:local_rent/mobileapp/auth/profile.dart';
import 'package:local_rent/mobileapp/chat/chat_page.dart';

import 'home.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _navbarState();
}

class _navbarState extends State<NavBar> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.black87,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble,
                color: Colors.white,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: ''),
        ],
      ),
    );
  }

  Widget _pages(int index) {
    switch (index) {
      case 0:
        return const EditProduct();
      case 1:
        return AllCategoriesPage();
      //const HomePage();
      case 2:
        return const AddProductPage();
      case 3:
        return const ChatPage();
      case 4:
        return const ProfilePage();
      default:
        return Container(); // Default to an empty container
    }
  }
}
