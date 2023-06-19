import 'package:flutter/material.dart';

class Rows extends StatefulWidget {
  const Rows({Key? key}) : super(key: key);

  @override
  State<Rows> createState() => _RowsState();
}

class _RowsState extends State<Rows> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rows'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.amber,
          ),
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.amber,
          ),
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.amber,
          ),
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.amber,
          ),
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.amber,
          ),
        ],
      ),
    );
  }
}
