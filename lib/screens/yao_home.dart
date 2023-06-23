import 'package:flutter/material.dart';
import 'package:pandi_news/screens/pages/yao_artikel.dart';
import 'package:pandi_news/screens/pages/yao_beranda.dart';
import 'package:pandi_news/screens/pages/yao_discover.dart';
import 'package:pandi_news/screens/pages/yao_post.dart';
import 'package:pandi_news/screens/pages/yao_profile.dart';

class YaoHome extends StatefulWidget {
  const YaoHome({super.key});

  @override
  State<YaoHome> createState() => _YaoHomeState();
}

class _YaoHomeState extends State<YaoHome> {
  int _selectedIndex = 0;
  // list halaman
  final List<Widget> _pages = [
    const YaoBeranda(),
    const YaoDiscover(),
    const YaoPost(),
    const YaoArtikel(),
    const YaoProfile(),
  ];

  void _onTapItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xffA47461),
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onTapItem,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home_filled,
            ),
          ),
          BottomNavigationBarItem(
            label: "Discover",
            icon: Icon(
              Icons.sensors_sharp,
            ),
          ),
          BottomNavigationBarItem(
            label: "Add",
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            label: "Artikel Saya",
            icon: Icon(
              Icons.article,
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
    );
  }
}
