import 'package:flutter/material.dart';
import 'package:testing2/config/colors.dart';

class Columns extends StatefulWidget {
  const Columns({Key? key}) : super(key: key);

  @override
  State<Columns> createState() => _ColumnsState();
}

class _ColumnsState extends State<Columns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Column"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                  color: SVTTrainingColors.darkGreenColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text('Column1'),
                ),
              ),
              ClipOval(
                  child: Container(
                      height: 100,
                      width: 100,
                      color: SVTTrainingColors.darkGreenColor,
                      child: Center(
                        child: Text('Column2'),
                      ))),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: SVTTrainingColors.darkGreenColor,
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                  child: Text('Column3'),
                ),
              ),
              Container(
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                  color: SVTTrainingColors.darkGreenColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text('Column4'),
                ),
              ),
              Container(
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                  color: SVTTrainingColors.darkGreenColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text('Column5'),
                ),
              ),
              Container(
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                  color: SVTTrainingColors.darkGreenColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text('Column6'),
                ),
              ),
            ],
          ),
        ));
  }
}
