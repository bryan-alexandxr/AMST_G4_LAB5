import "package:curved_navigation_bar/curved_navigation_bar.dart";
import 'package:g4amst/ui/views/home/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:g4amst/constants/colors.dart';
import 'package:g4amst/ui/views/home/explore_view.dart';
import 'package:g4amst/ui/views/home/for_you.dart';

class HomeView extends StatefulWidget {
  _HomeView createState() => _HomeView();
}
class _HomeView extends State<HomeView> {
  int _currentPage = 1;
  PageController? _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage,
        keepPage: true);
  }@override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomBar(),
      body: PageView(
        controller: _pageController,
        children: [ForYouView(),Explore(),Settings()],
        onPageChanged: (int index) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
    );
  }
  CurvedNavigationBar _bottomBar() {
    return CurvedNavigationBar(
      index: _currentPage,
      color: AppColors.primaryColor,
      backgroundColor: AppColors.background,
      animationDuration: const Duration(milliseconds: 300),
      items: const <Widget>[
        Icon(Icons.auto_awesome_mosaic_rounded, size: 30, color:
        AppColors.text_dark,),
        Icon(Icons.home, size: 30, color: AppColors.text_dark,),
        Icon(Icons.settings, size: 30, color: AppColors.text_dark,),
      ],
      onTap: (int index) {
        setState(() {
          _currentPage = index;
          _pageController!.animateToPage(index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease);
        });
      },
    );
  }
}