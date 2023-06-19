import 'package:flutter/material.dart';

import '../Grid & List/ListViewBuilder.dart';
import 'FirstPage.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListViewBuilderPage());
  }
}
