import 'package:flutter/material.dart';
import 'package:testing2/Screen2/WorkInfo.dart';

import 'School.dart';

class College extends StatefulWidget {
  const College({Key? key}) : super(key: key);

  @override
  State<College> createState() => _CollegeState();
}

class _CollegeState extends State<College> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('College Details'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WorkInfo()));
              },
              child: Text('Work'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => School()));
              },
              child: Text('School'),
            )
          ]),
        ),
      ),
    );
  }
}
