import 'package:flutter/material.dart';
import 'package:money_planner_app/Screens/home/HomePage.dart';

class MoneyManagerBottomNavigation extends StatelessWidget {
  const MoneyManagerBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: HomePage.selectedIndexNotifier,
      builder: (BuildContext ctx, int updatedIndex, Widget? _) {
        return  BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: IconThemeData.fallback(),
          currentIndex: updatedIndex,
          backgroundColor: Colors.deepPurple[900],
          onTap: (newIndex) => HomePage.selectedIndexNotifier.value=newIndex,
          items: [
            BottomNavigationBarItem(

              icon: Icon(
                Icons.home,color: Colors.white,
              ),
              label: 'Transactions',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.category_outlined,color: Colors.white,
                ),
                label: 'Categories'
            ),
          ],
        );
      },

    );
  }
}
