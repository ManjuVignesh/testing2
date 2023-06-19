import 'package:flutter/material.dart';
import 'package:testing2/youtube/YouTubeHomePage.dart';

class YTLeftDrawerScreen extends StatefulWidget {
  const YTLeftDrawerScreen({Key? key}) : super(key: key);

  @override
  State<YTLeftDrawerScreen> createState() => _YTLeftDrawerScreenState();
}

class _YTLeftDrawerScreenState extends State<YTLeftDrawerScreen> {
  @override
  List yticon = [
    Icon(Icons.fireplace),
    Icon(Icons.music_note),
    Icon(Icons.live_tv_sharp),
    Icon(Icons.bakery_dining_outlined),
    Icon(Icons.bakery_dining_outlined),
    Icon(Icons.newspaper),
    Icon(Icons.lightbulb),
    Icon(Icons.style_rounded)
  ];

  List ytdrawername = [
    'Trending',
    'Music',
    'Live',
    'Gaming',
    'News',
    'Sport',
    'Learning',
    'Fashion&beauty'
  ];

  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(height: 40),
          SizedBox(
            height: 60,
            child: Image(image: AssetImage('assets/jpeg/YTlogo.jpg')),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
                itemCount: ytdrawername.length,
                itemBuilder: (BuildContext context, index) {
                  return ListTile(
                    leading: yticon[index],
                    title: Text(ytdrawername[index]),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
