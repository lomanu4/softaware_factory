import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:softaware_factory/utils/global_variable.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:softaware_factory/theme/colors/colors.dart';

class NavButtonBar extends StatefulWidget {
  const NavButtonBar({super.key});

  @override
  State<NavButtonBar> createState() => _NavButtonBarState();
}

class _NavButtonBarState extends State<NavButtonBar> {
  late PageController pagecontroller;
  int _page = 0;
  @override
  void initState() {
    pagecontroller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pagecontroller.dispose();
    super.dispose();
  }

  void onPagechanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    pagecontroller.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pagecontroller,
        onPageChanged: onPagechanged,
        children: homeScreenitems,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _page,
        height: 60.0,
        items: [
          Icon(
            Icons.home,
            color: _page == 0
                ? AppColors.primaryColor
                : AppColors.primaryColorLight,
          ),
          Icon(
            Icons.person,
            color: _page == 0
                ? AppColors.primaryColor
                : AppColors.accentColorLight,
          ),
        ],
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 400),
        onTap: navigationTapped,
      ),
    );
  }
}
