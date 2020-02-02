

import 'package:cupertino_app/cupertino/screens/favourites.dart';
import 'package:cupertino_app/cupertino/screens/list.dart';
import 'package:cupertino_app/cupertino/screens/search.dart';
import 'package:cupertino_app/cupertino/screens/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class VaggiesMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          title: Text('Home2'),
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.book),
          title: Text('My Garden'),
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.search),
          title: Text('Search'),
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.settings),
          title: Text('Settings'),
        ),
      ]),
      tabBuilder: (context, index) {
        if (index == 0) {
          return ListScreen();
        } else if (index == 1) {
          return FavoritesScreen();
        } else if (index == 2) {
          return SearchScreen();
        } else {
          return SettingsScreen();
        }
      },
    );
  }
}