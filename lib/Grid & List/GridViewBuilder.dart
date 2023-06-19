import 'package:flutter/material.dart';

class GridViewBuilderPage extends StatefulWidget {
  const GridViewBuilderPage({Key? key}) : super(key: key);

  @override
  State<GridViewBuilderPage> createState() => _GridViewBuilderPageState();
}

class _GridViewBuilderPageState extends State<GridViewBuilderPage> {
  List color = [
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.blue,
  ];
  List colorname = ['red', 'yellow', 'blue', 'red', 'yellow', 'blue'];
  /*List images = [
    'assets/png/alligator.png',
    'assets/png/beaver.png',
    'assets/png/alligator.png',
    'assets/png/beaver.png',
    'assets/png/alligator.png',
    'assets/png/beaver.png',
  ];*/
  List images = [
    'https://fastly.picsum.photos/id/331/200/200.jpg?hmac=otNh1Xx2hk_Tng_SFa60ayddRGORvWnDKJ2wG1l0KIE',
    'https://fastly.picsum.photos/id/331/200/200.jpg?hmac=otNh1Xx2hk_Tng_SFa60ayddRGORvWnDKJ2wG1l0KIE',
    'https://fastly.picsum.photos/id/331/200/200.jpg?hmac=otNh1Xx2hk_Tng_SFa60ayddRGORvWnDKJ2wG1l0KIE',
    'https://fastly.picsum.photos/id/331/200/200.jpg?hmac=otNh1Xx2hk_Tng_SFa60ayddRGORvWnDKJ2wG1l0KIE',
    'https://fastly.picsum.photos/id/331/200/200.jpg?hmac=otNh1Xx2hk_Tng_SFa60ayddRGORvWnDKJ2wG1l0KIE',
    'https://fastly.picsum.photos/id/331/200/200.jpg?hmac=otNh1Xx2hk_Tng_SFa60ayddRGORvWnDKJ2wG1l0KIE'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Builder'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemCount: colorname.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: color[index],
                    image: DecorationImage(image: NetworkImage(images[index]))),
                child: Center(
                  child: Text(colorname[index]),
                ),
              );
            }),
      ),
    );
  }
}
