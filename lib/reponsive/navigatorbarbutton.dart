
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:softaware_factory/theme/colors.dart';

class NavButtonBar extends StatefulWidget {
  const NavButtonBar({super.key});

  @override
  State<NavButtonBar> createState() => _NavButtonBarState();
}

class _NavButtonBarState extends State<NavButtonBar> {
  late PageController pageConroller;
  int _page = 0;

  @override
  void initState() {
    pageConroller= PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageConroller.dispose();
    super.dispose();
  }

  void onPagechanged (int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped (int page) {
    pageConroller.jumpToPage(page);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageConroller,
        onPageChanged: onPagechanged,
        children: [],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _page,
        height: 60.0,
        items: [
          Icon(
            Icons.home,
            color: _page == 0  ? AppColor.primaryColor : AppColor.accentColor
          ),
           Icon(
            Icons.person,
            color: _page == 1
                ? AppColor.primaryColor
                : AppColor.primaryColorLight,
          ),
        ],
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 200),
        onTap: navigationTapped,
      ),
    );
  }
}