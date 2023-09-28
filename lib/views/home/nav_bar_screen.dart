import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mental_health_fitness_ui/constants/assets.dart';
import 'package:mental_health_fitness_ui/theme/app_style.dart';
import 'package:mental_health_fitness_ui/views/home/home_screen.dart';
import 'package:mental_health_fitness_ui/views/playlist/playlist_screen.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int currentIndex = 0;
  bool onHide = true;

  void onHideBottomNavBar(bool hide) {
    setState(() {
      onHide = hide;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.white,
      body: currentIndex == 0
          ? HomeScreen(
              onHideBottomNavBar: onHideBottomNavBar,
            )
          : const PlaylistScreen(),
      bottomNavigationBar: onHide
          ? null
          : BottomNavigationBar(
              onTap: (value) {
                if (value == 0 || value == 1) {
                  setState(() {
                    currentIndex = value;
                  });
                } else {}
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: $styles.colors.white,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              elevation: 0,
              items: [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: SvgPicture.asset(
                    currentIndex == 0 ? Assets.onHome : Assets.home,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Music',
                  icon: SvgPicture.asset(
                    currentIndex == 1 ? Assets.onMusic : Assets.music,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Group',
                  icon: SvgPicture.asset(Assets.group),
                ),
                BottomNavigationBarItem(
                  label: 'Setting',
                  icon: SvgPicture.asset(Assets.setting),
                ),
              ],
            ),
    );
  }
}
