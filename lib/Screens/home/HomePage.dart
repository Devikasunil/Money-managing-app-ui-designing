import 'package:flutter/material.dart';
import 'package:money_planner_app/Screens/category/CategoryPage.dart';
import 'package:money_planner_app/Screens/home/widgets/bottom_navigation.dart';
import 'package:money_planner_app/Screens/transactions/TransactionPage.dart';
import 'package:money_planner_app/models/category/category_model.dart';

import '../../DataBase/Category/category_DB.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key , }) : super(key: key);


  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  final List pages = [
    TransactionPage(),
    CategoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MoneyManagerBottomNavigation(),
      appBar: AppBar(
        leading: SizedBox(),
        title: Text(
          'Money Planner',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 90,
        backgroundColor: Colors.deepPurple[900],
      ),
      backgroundColor: Colors.deepPurple[900],
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectedIndexNotifier,
          builder: (Context, int updatedIndex, _) {
            return pages[updatedIndex];
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (selectedIndexNotifier.value == 0) {
            print('Add Transactions');
          } else {
            print('Add Categories');
          }
          // print('Button clicked');
          final _sample = CategoryModel(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            name: 'Travel',
            type: CategoryType.expense,
          );
          CategoryDB().insertCategory(_sample);
        },
        child: Icon(
          Icons.add,
          color: Colors.deepPurple[900],
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
