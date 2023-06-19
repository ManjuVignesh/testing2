import 'package:flutter/material.dart';
import 'package:testing2/config/colors.dart';

class ColumnsAndRows extends StatefulWidget {
  const ColumnsAndRows({Key? key}) : super(key: key);

  @override
  State<ColumnsAndRows> createState() => _ColumnsAndRowsState();
}

class _ColumnsAndRowsState extends State<ColumnsAndRows> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Columns & Rows'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: SVTTrainingColors.amberColor,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: SVTTrainingColors.amberColor,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: SVTTrainingColors.amberColor,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: SVTTrainingColors.amberColor,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: SVTTrainingColors.amberColor,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: SVTTrainingColors.amberColor,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: SVTTrainingColors.amberColor,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 60,
                  width: 150,
                  color: SVTTrainingColors.amberAccentColor,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 150,
                  color: SVTTrainingColors.amberAccentColor,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 150,
                  color: SVTTrainingColors.amberAccentColor,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 150,
                  color: SVTTrainingColors.amberAccentColor,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 150,
                  color: SVTTrainingColors.amberAccentColor,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 150,
                  color: SVTTrainingColors.amberAccentColor,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 150,
                  color: SVTTrainingColors.amberAccentColor,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 150,
                  color: SVTTrainingColors.amberAccentColor,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 150,
                  color: SVTTrainingColors.amberAccentColor,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 150,
                  color: SVTTrainingColors.amberAccentColor,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 150,
                  color: SVTTrainingColors.amberAccentColor,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 150,
                  color: SVTTrainingColors.amberAccentColor,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 150,
                  color: SVTTrainingColors.amberAccentColor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
