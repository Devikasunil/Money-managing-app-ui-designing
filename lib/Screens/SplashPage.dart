import 'package:flutter/material.dart';
import 'package:money_planner_app/Screens/home/HomePage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    gotoLogin();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 250),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image(
                    image: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/010/224/060/small/financial-management-concept-and-investment-banner-template-of-payment-with-money-free-png.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'Manage your money planning...',style: TextStyle(
                    color: Colors.blue[900],fontSize: 40
                  ),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Text('Get Started',style: TextStyle(
                    color: Colors.blue[900],
                  fontSize: 25,

                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> gotoLogin()async {
   await Future.delayed(Duration(seconds: 5));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }
}
