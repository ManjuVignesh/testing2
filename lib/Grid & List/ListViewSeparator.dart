import 'package:flutter/material.dart';

class ListViewSeparatorPage extends StatefulWidget {
  const ListViewSeparatorPage({Key? key}) : super(key: key);

  @override
  State<ListViewSeparatorPage> createState() => _ListViewSeparatorPageState();
}

class _ListViewSeparatorPageState extends State<ListViewSeparatorPage> {
  List data = [
    '2min',
    '30sec',
    '1 min',
    '4min',
    '1hr',
    '10min',
    '7min',
    '45sec',
    '1min'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Separator'),
      ),
      body: ListView.separated(
        itemCount: data.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            leading: Icon(Icons.call_rounded),
            title: Text('Friend ${index + 1}'),
            trailing: Text(data[index]),
          );
        },
        separatorBuilder: (BuildContext context, index) {
          return Divider(
            height: 2,
            color: Colors.black12,
            thickness: 2,
          );
        },
      ),
    );
  }
}
