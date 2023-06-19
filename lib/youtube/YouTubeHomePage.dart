import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:testing2/Screen2/LoginShared.dart';
import 'package:testing2/youtube/Drawer/YTLeftDrawer.dart';

import '../config/colors.dart';

class YouTubeHomeScreen extends StatefulWidget {
  const YouTubeHomeScreen({Key? key}) : super(key: key);

  @override
  State<YouTubeHomeScreen> createState() => _YouTubeHomeScreenState();
}

class _YouTubeHomeScreenState extends State<YouTubeHomeScreen> {
  @override
  List<String> explore = [
    'All',
    'Comedy',
    'Music',
    'Cartoon',
    'Blippi',
    '90s song',
    'Sports',
    'Gaming',
    'News',
    'Cooking',
    'beauty'
  ];

  List shortsImage = [
    'assets/jpeg/tree1.jpg',
    'assets/jpeg/tree2.jpg',
    'assets/jpeg/tree3.jpg',
    'assets/jpeg/tree4.jpg',
    'assets/jpeg/tree5.jpg',
    'assets/jpeg/tree6.jpg',
    'assets/jpeg/tree7.jpg',
    'assets/jpeg/tree8.jpg',
    'assets/jpeg/tree9.jpg',
    'assets/jpeg/tree10.jpg',
    'assets/jpeg/tree11.jpg',
    'assets/jpeg/tree12.jpg',
    'assets/jpeg/tree13.jpg',
    'assets/jpeg/tree14.jpg',
    'assets/jpeg/tree15.jpg',
  ];

  int currentindex = 1;

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/jpeg/YTlogo1.jpg',
                        height: 70, width: 160),
                    SizedBox(width: 75),
                    Icon(
                      Icons.cast,
                      color: SVTTrainingColors.greyColor,
                      size: 25.0,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Icon(
                      Icons.notifications_none,
                      color: SVTTrainingColors.greyColor,
                      size: 30.0,
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Icon(
                      Icons.search,
                      color: SVTTrainingColors.greyColor,
                      size: 30.0,
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage('assets/jpeg/face4.jpg'),
                    ),
                  ],
                ),
                Container(
                  //width: double.infinity,
                  height: 50,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: explore.length,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          margin: EdgeInsets.all(5.0), //space btw containers
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: SVTTrainingColors.greyColor,
                          ),
                          alignment: Alignment.center,
                          child: Text(explore[index]),
                        );
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/png/shortsYT.png',
                      height: 20,
                      width: 50,
                    ),
                    Text(
                      'Shorts',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: shortsImage.length,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              height: 200,
                              width: 160,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, bottom: 10),
                                    child: Text(
                                      'Shades of Tree',
                                      style: TextStyle(
                                          color: SVTTrainingColors.whiteColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 8.0, left: 10.0),
                                    child: Text(
                                      '15k views',
                                      style: TextStyle(
                                          color: SVTTrainingColors.whiteColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: SVTTrainingColors.blackColor,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(shortsImage[index]),
                                    fit: BoxFit.fill),
                              ),
                            ));
                      },
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 230,
                  width: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/jpeg/sunset.jpg'),
                          fit: BoxFit.fill),
                      shape: BoxShape.rectangle),
                ),
                SizedBox(height: 7),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/jpeg/hapcircle.jpg'),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Sunsetnview|Farm Area|Happy Breezze',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Nature Photographer'),
                        Text('215k views | 7months ago')
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Stack(alignment: Alignment.bottomRight, children: [
                  Container(
                    height: 230,
                    width: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/jpeg/comountain.jpg'),
                            fit: BoxFit.fill),
                        shape: BoxShape.rectangle),
                  ),
                  Positioned(
                    child: Container(
                      height: 40,
                      width: 80,
                      color: Colors.grey[300],
                      child: Center(child: Text('14:42')),
                    ),
                  )
                ]),
                SizedBox(height: 7),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/jpeg/Giselle.jpg'),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Sunsetnview|Farm Area|Happy Breezze',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Nature Photographer'),
                        Text('215k views | 7months ago')
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Image.asset(
                      'assets/png/shortsYT.png',
                      height: 20,
                      width: 50,
                    ),
                    Text(
                      'Shorts',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                SizedBox(
                  height: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: shortsImage.length,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              height: 200,
                              width: 160,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, bottom: 10),
                                    child: Text(
                                      'Shades of Tree',
                                      style: TextStyle(
                                          color: SVTTrainingColors.whiteColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Text(
                                      '15k views',
                                      style: TextStyle(
                                          color: SVTTrainingColors.whiteColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: SVTTrainingColors.blackColor,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(shortsImage[index]),
                                    fit: BoxFit.fill),
                              ),
                            ));
                      },
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 230,
                  width: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/jpeg/monument.jpg'),
                          fit: BoxFit.fill),
                      shape: BoxShape.rectangle),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200, left: 350),
                    child: Container(
                      height: 20,
                      width: 45,
                      child: Text("7:15",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                SizedBox(height: 7),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/png/face1.png'),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Sunsetnview|Farm Area|Happy Breezze',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Nature Photographer'),
                        Text('215k views | 7months ago')
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          currentIndex: currentindex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.show_chart),
                label: 'Shorts',
                backgroundColor: Colors.yellow),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline), label: 'Add'),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions), label: 'Subscription'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_library), label: 'Library')
          ]),
    );
  }
}
/*
 bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
            backgroundColor: Colors.red),
        BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            label: 'Shorts',
            backgroundColor: Colors.yellow),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline), label: 'Add'),
        BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions), label: 'Subscription'),
        BottomNavigationBarItem(
            icon: Icon(Icons.video_library), label: 'Library')
      ]),
 */
