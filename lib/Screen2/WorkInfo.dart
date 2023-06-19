import 'package:flutter/material.dart';
import 'package:testing2/Screen2/College.dart';

import '../Screens/AppBarHome.dart';
import 'Drawer.dart';
import 'School.dart';

class WorkInfo extends StatefulWidget {
  const WorkInfo({Key? key}) : super(key: key);

  @override
  State<WorkInfo> createState() => _WorkInfoState();
}

class _WorkInfoState extends State<WorkInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Work Experience'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => College()));
              },
              child: Text('College'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => School()));
              },
              child: Text('School'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeScreenAppBar()));
              },
              child: Text('Home'),
            )
          ]),
        ),
      ),
    );
  }
}
