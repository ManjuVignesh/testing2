import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../config/routers.dart';
import 'LoginShared.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  late SharedPreferences logindata;
  late String email;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      email = logindata.getString('email')!;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preferences Dashboard'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Welcome to Dasboard $email'),
          ),
          ElevatedButton(
              onPressed: () {
                logindata.setBool('login', true);
                Navigator.pushNamedAndRemoveUntil(
                    context, Routers.loginScreen, (route) => false);
              },
              child: Text('Logout'))
        ],
      ),
    );
  }
}
