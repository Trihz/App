import 'package:agrogis/account/account.dart';
import 'package:agrogis/droneservices/drone_services_ui.dart';
import 'package:agrogis/homepage/homepage_ui.dart';
import 'package:agrogis/myfarm/myfarm.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class LandingPageUI extends StatefulWidget {
  const LandingPageUI({super.key});

  @override
  State<LandingPageUI> createState() => _LandingPageUIState();
}

class _LandingPageUIState extends State<LandingPageUI> {
  /// defining the main colors
  Color mainColor = const Color.fromARGB(255, 43, 145, 46);

  List screens = [
    const HomepageUI(),
    const MyFarm_UI(),
    const DroneSevicesUI(),
    const AccountUI()
  ];

  int activeIndex = 0;

  final iconList = <IconData>[
    Icons.home,
    Icons.crop,
    Icons.map,
    Icons.person,
  ];

  /// Handler for when you want to programmatically change
  /// the active index. Calling `setState()` here causes
  /// Flutter to re-render the tree, which `AnimatedBottomNavigationBar`
  /// responds to by running its normal animation.
  void _onTap(int index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[activeIndex], // Show the screen based on activeIndex
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        elevation: 10,
        child: Container(
            height: 35,
            width: 35,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/drone.png'),
                fit: BoxFit.fill,
              ),
            )),
        onPressed: () {
          Navigator.pushNamed(context, '/droneservices');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        splashRadius: 20,
        splashSpeedInMilliseconds: 300,
        icons: iconList,
        borderColor: const Color.fromARGB(255, 230, 230, 230),
        activeIndex: activeIndex,
        activeColor: mainColor,
        iconSize: 25,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        notchMargin: 10,
        onTap: (index) =>
            setState(() => activeIndex = index), // Update activeIndex on tap
      ),
    );
  }
}
