import 'package:flutter/material.dart';
import 'package:money_planner_app/Screens/category/expense_category_list.dart';
import 'package:money_planner_app/Screens/category/income_category_list.dart';

import '../../DataBase/Category/category_DB.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    CategoryDB().getCategories().then((value) {
      print('Categores get');
      print(value);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.white,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              child: Text(
                'INCOME',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Tab(
              child: Text(
                'EXPENSE',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              IncomeCategoryList(),
              ExpenseCategoryList(),
            ],
          ),
        ),
      ],
    );
  }
}
