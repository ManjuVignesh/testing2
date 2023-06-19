import 'package:flutter/material.dart';
import 'package:testing2/config/colors.dart';

class GridViewCountPage extends StatefulWidget {
  const GridViewCountPage({Key? key}) : super(key: key);

  @override
  State<GridViewCountPage> createState() => _GridViewCountPageState();
}

class _GridViewCountPageState extends State<GridViewCountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Count'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10,
          children: [
            Container(
              decoration: BoxDecoration(
                color: SVTTrainingColors.lightGreen1,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Icon(Icons.home, size: 40),
            ),
            Container(
              decoration: BoxDecoration(
                  color: SVTTrainingColors.lightGreen2,
                  borderRadius: BorderRadius.circular(25)),
              child: Icon(
                Icons.add_photo_alternate_outlined,
                size: 40,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: SVTTrainingColors.lightGreen3,
                  borderRadius: BorderRadius.circular(25)),
              child: Icon(Icons.edit, size: 40),
            ),
            Container(
              decoration: BoxDecoration(
                  color: SVTTrainingColors.lightGreen4,
                  borderRadius: BorderRadius.circular(25)),
              child: Icon(
                Icons.search,
                size: 40,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: SVTTrainingColors.lightGreen5,
                  borderRadius: BorderRadius.circular(25)),
              child: Icon(
                Icons.settings,
                size: 40,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: SVTTrainingColors.lightGreen6,
                  borderRadius: BorderRadius.circular(25)),
              child: Icon(Icons.arrow_forward, size: 40),
            ),
          ],
        ),
      ),
    );
  }
}
