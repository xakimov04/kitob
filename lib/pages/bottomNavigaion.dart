import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBottomNavigation extends StatelessWidget {
  final int _currentPageIndex;
  final Function _changePage;
  const MyBottomNavigation(this._currentPageIndex, this._changePage,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 50,
      height: 70,
      shadowColor: Colors.black,
      color: Colors.white,
      surfaceTintColor: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              _changePage(0);
            },
            icon: Icon(
              _currentPageIndex == 0 ? Icons.home_rounded : Icons.home_outlined,
              color: _currentPageIndex == 0
                  ? const Color(0xff47c1a0)
                  : Colors.grey,
              size: 28,
            ),
            tooltip: 'Home',
          ),
          IconButton(
            onPressed: () {
              _changePage(1);
            },
            icon: Icon(
              _currentPageIndex == 1 ? Icons.grid_view_rounded : Icons.grid_view_outlined,
              color: _currentPageIndex == 1
                  ? const Color(0xff47c1a0)
                  : Colors.grey,
              size: 28,
            ),
            tooltip: 'Favorite',
          ),
          IconButton(
            onPressed: () {
              _changePage(2);
            },
            icon: Icon(
              _currentPageIndex == 2 ? Icons.shopping_cart_rounded : Icons.shopping_cart_outlined,
              color: _currentPageIndex == 2
                  ? const Color(0xff47c1a0)
                  : Colors.grey,
              size: 28,
            ),
            tooltip: 'Shopping card',
          ),
          IconButton(
            onPressed: () {
              _changePage(3);
            },
            icon: Icon(
              _currentPageIndex == 3 ? Icons.favorite : Icons.favorite_border,
              color: _currentPageIndex == 3
                  ? const Color(0xff47c1a0)
                  : Colors.grey,
              size: 28,
            ),
            tooltip: 'Profile',
          ),
          IconButton(
            onPressed: () {
              _changePage(4);
            },
            icon: Icon(
              _currentPageIndex == 4 ? CupertinoIcons.person_alt : CupertinoIcons.person,
              color: _currentPageIndex == 4
                  ? const Color(0xff47c1a0)
                  : Colors.grey,
              size: 28,
            ),
            tooltip: 'Profile',
          ),
        ],
      ),
    );
  }
}
