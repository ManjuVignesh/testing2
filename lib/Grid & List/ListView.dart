import 'package:flutter/material.dart';
import 'package:testing2/config/colors.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key, required String title}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: SVTTrainingColors.lightGreen,
            ),
            title: Text('Person 1'),
            trailing: Wrap(
              spacing: 12,
              children: [
                Icon(Icons.timer_10_sharp),
                Icon(Icons.info_outline_rounded),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: SVTTrainingColors.lightGreen,
            ),
            title: Text('Person 2'),
            trailing: Wrap(
              spacing: 12,
              children: [
                Icon(Icons.timer_10_sharp),
                Icon(Icons.info_outline_rounded),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: SVTTrainingColors.lightGreen,
            ),
            title: Text('Person 3'),
            trailing: Wrap(
              spacing: 12,
              children: [
                Icon(Icons.timer_10_sharp),
                Icon(Icons.info_outline_rounded),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: SVTTrainingColors.lightGreen,
            ),
            title: Text('Person 4'),
            trailing: Wrap(
              spacing: 12,
              children: [
                Icon(Icons.timer_10_sharp),
                Icon(Icons.info_outline_rounded),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: SVTTrainingColors.lightGreen,
            ),
            title: Text('Person 5'),
            trailing: Wrap(
              spacing: 12,
              children: [
                Icon(Icons.timer_10_sharp),
                Icon(Icons.info_outline_rounded),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: SVTTrainingColors.lightGreen,
            ),
            title: Text('Person 6'),
            trailing: Wrap(
              spacing: 12,
              children: [
                Icon(Icons.timer_10_sharp),
                Icon(Icons.info_outline_rounded),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: SVTTrainingColors.lightGreen,
            ),
            title: Text('Person 7'),
            trailing: Wrap(
              spacing: 12,
              children: [
                Icon(Icons.timer_10_sharp),
                Icon(Icons.info_outline_rounded),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: SVTTrainingColors.lightGreen,
            ),
            title: Text('Person 8'),
            trailing: Wrap(
              spacing: 12,
              children: [
                Icon(Icons.timer_10_sharp),
                Icon(Icons.info_outline_rounded),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: SVTTrainingColors.lightGreen,
            ),
            title: Text('Person 9'),
            trailing: Wrap(
              spacing: 12,
              children: [
                Icon(Icons.timer_10_sharp),
                Icon(Icons.info_outline_rounded),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: SVTTrainingColors.lightGreen,
            ),
            title: Text('Person 10'),
            trailing: Wrap(
              spacing: 12,
              children: [
                Icon(Icons.timer_10_sharp),
                Icon(Icons.info_outline_rounded),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: SVTTrainingColors.lightGreen,
            ),
            title: Text('Person 11'),
            trailing: Wrap(
              spacing: 12,
              children: [
                Icon(Icons.timer_10_sharp),
                Icon(Icons.info_outline_rounded),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: SVTTrainingColors.lightGreen,
            ),
            title: Text('Person 12'),
            trailing: Wrap(
              spacing: 12,
              children: [
                Icon(Icons.timer_10_sharp),
                Icon(Icons.info_outline_rounded),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: SVTTrainingColors.lightGreen,
            ),
            title: Text('Person 13'),
            trailing: Wrap(
              spacing: 12,
              children: [
                Icon(Icons.timer_10_sharp),
                Icon(Icons.info_outline_rounded),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: SVTTrainingColors.lightGreen,
            ),
            title: Text('Person 14'),
            trailing: Wrap(
              spacing: 12,
              children: [
                Icon(Icons.timer_10_sharp),
                Icon(Icons.info_outline_rounded),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: SVTTrainingColors.lightGreen,
            ),
            title: Text('Person 15'),
            trailing: Wrap(
              spacing: 12,
              children: [
                Icon(Icons.timer_10_sharp),
                Icon(Icons.info_outline_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
