import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key, required String title}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  //List title = [];
  List time = [
    '4:30 PM',
    '4:15PM',
    '4:02PM',
    '3:45PM',
    '3:40PM',
    '3:25PM',
    '3:00PM',
    '2:00PM',
    '1:55PM',
    '11:55',
    '11:10',
    '11:00',
    '10:55',
    '10:30',
    '10:00'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: ListView.builder(
          itemCount: time.length,
          itemBuilder: (BuildContext context, index) {
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(),
                  title: Text('Friend ${index + 1}'),
                  subtitle: const Text('Catch you later'),
                  trailing: Text(time[index]),
                  //Icon(Icons.timer_sharp),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Divider(
                    height: 1,
                    color: Colors.black12,
                    thickness: 2,
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
