import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:money_planner_app/Screens/SplashPage.dart';
import 'package:money_planner_app/models/category/category_model.dart';


Future<void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
 await Hive.initFlutter();
 if(!Hive.isAdapterRegistered(CategoryTypeAdapter().typeId)){
   Hive.registerAdapter(CategoryTypeAdapter());
 }

  if(!Hive.isAdapterRegistered(CategoryModelAdapter().typeId)){
    Hive.registerAdapter(CategoryModelAdapter());
  }
  runApp(MoneyPlannerApp(),);
}

class MoneyPlannerApp extends StatelessWidget {
  const MoneyPlannerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Money Planner App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       canvasColor: Colors.white,

      ),
      home: SplashPage(),
    );
  }
}

