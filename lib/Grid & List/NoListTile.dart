import 'package:flutter/material.dart';
import 'package:testing2/config/colors.dart';

class ImagesAndText extends StatefulWidget {
  const ImagesAndText({Key? key}) : super(key: key);

  @override
  State<ImagesAndText> createState() => _ImagesAndTextState();
}

class _ImagesAndTextState extends State<ImagesAndText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contact Details"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Container(
                //padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: SVTTrainingColors.whiteColor,
                      foregroundImage: AssetImage('assets/jpeg/hapcircle.jpg'),
                    ),
                    SizedBox(width: 40),
                    Column(children: [
                      Text('Andrea',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 21)),
                      Text('Good morning'),
                    ])
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                //padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: SVTTrainingColors.whiteColor,
                      backgroundImage: AssetImage('assets/png/owlemoji.png'),
                    ),
                    SizedBox(width: 40),
                    Column(children: [
                      Text('Andrea',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 21)),
                      Text('Good morning'),
                    ])
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                //padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: SVTTrainingColors.whiteColor,
                      foregroundImage: AssetImage('assets/jpeg/circle1.jpg'),
                    ),
                    SizedBox(width: 40),
                    Column(children: [
                      Text('Bhargavi',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 21)),
                      Text('Happy morning'),
                    ])
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                //padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: SVTTrainingColors.whiteColor,
                      backgroundImage: AssetImage('assets/jpeg/bluecircle.jpg'),
                    ),
                    SizedBox(width: 40),
                    Column(children: [
                      Text('Aarthi',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 21)),
                      Text('Thank you'),
                    ])
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                //padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: SVTTrainingColors.whiteColor,
                      backgroundImage: AssetImage('assets/png/owlpurple.png'),
                    ),
                    SizedBox(width: 40),
                    Column(children: [
                      Text('Andrea',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 21)),
                      Text('Catch you tomorrow'),
                    ])
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                //padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('assets/png/face1.png'),
                    ),
                    SizedBox(width: 40),
                    Column(children: [
                      Text('Andrea',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 21)),
                      Text('Good morning'),
                    ])
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                //padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('assets/jpeg/face3.jpg'),
                    ),
                    SizedBox(width: 40),
                    Column(children: [
                      Text('Andrea',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 21)),
                      Text('Good morning'),
                    ])
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                //padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          'https://fastly.picsum.photos/id/331/200/200.jpg?hmac=otNh1Xx2hk_Tng_SFa60ayddRGORvWnDKJ2wG1l0KIE'),
                    ),
                    SizedBox(width: 40),
                    Column(children: [
                      Text('Aravind',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 21)),
                      Text('Good morning, have a nice day'),
                    ])
                  ],
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ));
  }
}
