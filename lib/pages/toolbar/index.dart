import 'package:flutter/material.dart';

import 'decorate/index.dart';
import 'home/index.dart';
import 'iot/index.dart';
import 'mall/index.dart';
import 'mine/index.dart';


class Toolbar extends StatefulWidget {
  const Toolbar({Key? key}) : super(key: key);

  @override
  State<Toolbar> createState() => _ToolbarState();
}

class _ToolbarState extends State<Toolbar> {
  int initIndex = 0;

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children:  [
          Home(),
          Decorate(),
          Mall(),
          Iot(),
          Mine(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromRGBO(43, 76, 126, 1),
        unselectedItemColor: const Color.fromRGBO(43, 76, 126, .5),
        currentIndex: initIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _pageController.jumpToPage(index);
            initIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '首页',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            label: '装修',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront),
            label: '商城',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.memory,
            ),
            label: '设备',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '我的',
          ),
        ],
      ),
    );
  }
}
