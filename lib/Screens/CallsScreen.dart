import 'package:flutter/material.dart';
import 'package:testing2/Grid%20&%20List/ListView.dart';

import 'SecondPage.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({Key? key, required String title}) : super(key: key);

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListViewPage(
        title: 'Calls',
      ),
    );
  }
}
