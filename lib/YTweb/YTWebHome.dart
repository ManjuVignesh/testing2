import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:testing2/config/colors.dart';

class YTWebHome extends StatefulWidget {
  const YTWebHome({Key? key}) : super(key: key);

  @override
  State<YTWebHome> createState() => _YTWebHomeState();
}

class _YTWebHomeState extends State<YTWebHome> {
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
    'beauty',
    'Flutter',
    'Mantras',
    'Live',
    'Mixes',
    'Tamil Cinema',
    'Vijay',
    'Watched',
    'Kids show',
    'Prayers',
    'New to you'
  ];
  List recPicture = [
    'assets/jpeg/comountain.jpg',
    'assets/jpeg/monument.jpg',
    'assets/jpeg/sunset.jpg',
    'assets/jpeg/comountain.jpg',
    'assets/jpeg/monument.jpg',
    'assets/jpeg/sunset.jpg',
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
  List assetImage = [
    'assets/png/Giselle.png',
    'assets/png/face1.png',
    'assets/jpeg/face4.jpg',
    'assets/png/Giselle.png',
    'assets/png/face1.png',
    'assets/jpeg/face4.jpg'
  ];
  List assetText = [
    'Epsiode 1 | Colourful evening | Wallpaper Collection | 148k views - 1 year ago ',
    'Epsiode 1 | Breath Taking Wallpaper | Relaxation View | 55k views - 6 months ago',
    'Epsiode 1 | Most beautiful Nature picture | 8k world| 87k views - 9 months ago',
    'Epsiode 2 | Colourful evening | Wallpaper Collection | 148k views - 1 year ago ',
    'Epsiode 2 | Breath Taking Wallpaper | Relaxation View | 55k views - 6 months ago ',
    'Epsiode 2 | Most beautiful Nature picture | 8k world| 87k views - 9 months ago',
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MaterialScrollBehavior()
          .copyWith(dragDevices: {PointerDeviceKind.mouse}),
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading:
              false, //to remove the back navigation button or leading
          backgroundColor: SVTTrainingColors.whiteColor,
          elevation: 0,
          title: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu, color: SVTTrainingColors.blackColor),
              Image.asset('assets/jpeg/YTlogo1.jpg', height: 70, width: 160),
              SizedBox(width: 250),
              Row(children: [
                SizedBox(
                  width: 600,
                  child: TextFormField(
                    cursorColor: SVTTrainingColors.blackColor,
                    decoration: InputDecoration(
                        hintText: 'Search',
                        suffixIcon: Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        isDense: true,
                        contentPadding: const EdgeInsets.all(13.0),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: SVTTrainingColors.blackColor,
                          ),
                        )),
                  ),
                ),
                Container(
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: SVTTrainingColors.greyColor,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.search_outlined),
                    //iconSize: 15.0,
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: 10.0),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.mic, color: SVTTrainingColors.blackColor)),
              ]),
              SizedBox(width: 150),
              Row(
                children: [
                  IconButton(
                      padding: EdgeInsets.only(right: 30.0),
                      onPressed: () {},
                      icon: Icon(
                        Icons.video_call_outlined,
                        color: SVTTrainingColors.blackColor,
                      )),
                  IconButton(
                      padding: EdgeInsets.only(right: 30.0),
                      onPressed: () {},
                      icon: Icon(Icons.apps_outlined,
                          color: SVTTrainingColors.blackColor)),
                  IconButton(
                      padding: const EdgeInsets.only(right: 30.0),
                      onPressed: () {},
                      icon: Icon(Icons.notifications_none,
                          color: SVTTrainingColors.blackColor)),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/jpeg/haface.jpg'),
                    backgroundColor: SVTTrainingColors.whiteColor,
                  )
                ],
              )
            ],
          ),
        ),
        body: Row(
          children: [
            SizedBox(height: 20),
            Expanded(
              flex: 1,
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.home_filled),
                    title: Text('Home'),
                  ),
                  ListTile(
                    leading: Icon(Icons.show_chart_rounded),
                    title: Text('Shorts'),
                  ),
                  ListTile(
                    leading: Icon(Icons.subscriptions),
                    title: Text('Subscriptions'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.video_library),
                    title: Text('Library'),
                  ),
                  ListTile(
                    leading: Icon(Icons.history),
                    title: Text('History'),
                  ),
                  ListTile(
                    leading: Icon(Icons.video_collection_sharp),
                    title: Text('Your video'),
                  ),
                  ListTile(
                      leading: Icon(Icons.access_time),
                      title: Text('Watch Later')),
                  ListTile(
                    leading: Icon(Icons.thumb_up),
                    title: Text('Liked Videos'),
                  ),
                  ListTile(
                    leading: Icon(Icons.table_rows),
                    title: Text('food'),
                  ),
                  Divider(),
                  SizedBox(
                    child: Text('Subscriptions'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ListTile(
                      leading: Image.asset(
                        'assets/jpeg/blippi.jpg',
                        height: 30,
                      ),
                      title: Text('Blippi')),
                  ListTile(
                    leading:
                        Image.asset('assets/png/strawberry.png', height: 30),
                    title: Text('Cocomelon'),
                  ),
                  ListTile(
                      leading: Image.asset(
                        'assets/jpeg/blippi.jpg',
                        height: 30,
                      ),
                      title: Text('Blippi')),
                  ListTile(
                    leading:
                        Image.asset('assets/png/strawberry.png', height: 30),
                    title: Text('Cocomelon'),
                  ),
                  ListTile(
                    leading:
                        Image.asset('assets/png/strawberry.png', height: 30),
                    title: Text('Cocomelon'),
                  ),
                  ListTile(
                      leading: Image.asset(
                        'assets/jpeg/blippi.jpg',
                        height: 30,
                      ),
                      title: Text('Blippi')),
                  ListTile(
                    leading:
                        Image.asset('assets/png/strawberry.png', height: 30),
                    title: Text('Cocomelon'),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: ListView(
                children: [
                  SizedBox(
                    height: 50,
                    //color: Colors.red,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: explore.length,
                        itemBuilder: (BuildContext context, index) {
                          return Container(
                            margin: EdgeInsets.all(5.0), //space btw containers
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: SVTTrainingColors.greyColor,
                            ),
                            alignment: Alignment.center,
                            child: Text(explore[index]),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          //crossAxisSpacing: 10,
                        ),
                        itemCount: recPicture.length,
                        itemBuilder: (context, index) {
                          return Column(children: [
                            Container(
                              height: 260,
                              width: 350,
                              decoration: BoxDecoration(
                                  color: SVTTrainingColors.greyColor,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(recPicture[index]),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage:
                                      AssetImage(assetImage[index]),
                                ),
                                SizedBox(width: 20),
                                Container(
                                    height: 90,
                                    width: 300,
                                    color: SVTTrainingColors.greyColor300,
                                    child: Text(assetText[index],
                                        style: TextStyle(
                                            fontSize: 20.00,
                                            color:
                                                SVTTrainingColors.blackColor))),
                              ]),
                            ),
                          ]);
                        },
                      ),
                    ),
                  ),
                  Divider(),
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
                                decoration: BoxDecoration(
                                  color: SVTTrainingColors.blackColor,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(shortsImage[index]),
                                      fit: BoxFit.fill),
                                ),
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
                              ));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
