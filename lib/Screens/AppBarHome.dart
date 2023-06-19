import 'package:flutter/material.dart';
import 'package:testing2/YTweb/YTWebHome.dart';
import 'package:testing2/config/colors.dart';

import 'CallsScreen.dart';
import 'ChatScreen.dart';
import '../Screen2/Drawer.dart';
import 'StatusScreen.dart';

class HomeScreenAppBar extends StatefulWidget {
  const HomeScreenAppBar({Key? key}) : super(key: key);

  @override
  State<HomeScreenAppBar> createState() => _HomeScreenAppBarState();
}

class _HomeScreenAppBarState extends State<HomeScreenAppBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: DrawerScreen(),
        appBar: AppBar(
          title: Text('Mail Up'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [
                    SVTTrainingColors.lightGreen,
                    SVTTrainingColors.greenColor,
                  ]),
            ),
          ),
          bottom: TabBar(
            indicatorColor: SVTTrainingColors.whiteColor,
            indicatorWeight: 5.0,
            tabs: [
              Tab(text: 'Status'),
              Tab(text: 'Chats'),
              Tab(text: 'Calls'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            StatusScreen(),
            ChatScreen(
              title: 'Chats',
            ),
            CallsScreen(
              title: 'Calls',
            ),
          ],
        ),
      ),
    );
  }
}
