import 'package:flutter/material.dart';

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({super.key, required this.title});

  final String title;

  @override
  State<MyFirstPage> createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counting App'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: _incrementCounter,
              child: const Icon(Icons.add),
            ),
            Text("$_counter"),
            FloatingActionButton(
              onPressed: _decrementCounter,
              child: const Icon(Icons.remove),
            )
          ],
        ),
      ),
    );
  }
}
