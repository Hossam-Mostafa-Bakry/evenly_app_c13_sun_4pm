import 'package:evently_app_c13_sun_4_pm/core/theme/app_theme_manager.dart';
import 'package:evently_app_c13_sun_4_pm/core/theme/color_palette.dart';
import 'package:evently_app_c13_sun_4_pm/modules/layout/home_tab.dart';
import 'package:flutter/material.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int selectedIndex = 0;
  List<Widget> tabs=[
    const HomeTab(),
    const Scaffold(),
    const SizedBox(),
    const Scaffold(),
    const Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(
          side: BorderSide(
            color: ColorPalette.white,
            width: 5,
          ),
        ),
        backgroundColor: ColorPalette.primaryColor,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 30,
          color: ColorPalette.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onBtnNavTapped,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorPalette.primaryColor,
        selectedItemColor: ColorPalette.white,
        unselectedItemColor: ColorPalette.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            activeIcon: Icon(Icons.location_on),
            label: "Map",
          ),
          BottomNavigationBarItem(
            icon: SizedBox.shrink(),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_rounded),
            activeIcon: Icon(Icons.favorite),
            label: "Likes",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            activeIcon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
      body: tabs[selectedIndex],
    );
  }

  _onBtnNavTapped(int index) {
    selectedIndex = index;
    setState(() {});
  }
}
