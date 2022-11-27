import 'package:flutter/material.dart';
import 'package:gotravel_project/class/category.dart';
import 'package:gotravel_project/modal/color_class.dart';
import 'package:gotravel_project/class/discovery.dart';
import 'package:gotravel_project/class/notification.dart';
import 'package:gotravel_project/home_page.dart';
import 'package:iconly/iconly.dart';

class RoutingPage extends StatefulWidget {
  const RoutingPage({Key? key}) : super(key: key);

  @override
  State<RoutingPage> createState() => _RoutingPageState();
}

class _RoutingPageState extends State<RoutingPage> {
  int _selectedIndex = 0;

  final List<Widget> _pageRoute = [
    const HomePage(),
    const DiscoveryPage(),
    const NotificationPage(),
    const CategoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageRoute.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.home),
              label: "",
              ),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.discovery),
              label: "",
             ),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.notification),
              label: "",
             ),
          BottomNavigationBarItem(
              icon: Icon(IconlyLight.category),
              label: "",
            ),
        ],
      ),
    );
  }
}