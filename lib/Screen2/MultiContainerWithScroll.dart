import 'package:flutter/material.dart';
import 'package:testing2/config/colors.dart';

class MultiContainerWithScroll extends StatefulWidget {
  const MultiContainerWithScroll({Key? key}) : super(key: key);

  @override
  State<MultiContainerWithScroll> createState() =>
      _MultiContainerWithScrollState();
}

class _MultiContainerWithScrollState extends State<MultiContainerWithScroll> {
  dynamic texttochange = 'Chat log';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(texttochange),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              color: SVTTrainingColors.lightGreenAccent,
              child: ListView(
                children: [
                  Container(
                    height: 200,
                    width: 50,
                    color: SVTTrainingColors.whiteColor,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text('Person1'),
                    trailing: Icon(Icons.timer_sharp),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text('Person2'),
                    trailing: Icon(Icons.timer_sharp),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text('Person3'),
                    trailing: Icon(Icons.timer_sharp),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text('Person4'),
                    trailing: Icon(Icons.timer_sharp),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text('Person5'),
                    trailing: Icon(Icons.timer_sharp),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text('Person6'),
                    trailing: Icon(Icons.timer_sharp),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text('Person7'),
                    trailing: Icon(Icons.timer_sharp),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text('Person8'),
                    trailing: Icon(Icons.timer_sharp),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text('Person9'),
                    trailing: Icon(Icons.timer_sharp),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text('Person10'),
                    trailing: Icon(Icons.timer_sharp),
                  ),
                ],
              ),
            ),
            Container(
              child: Center(
                child: ElevatedButton(
                    onPressed: () {
                      changeText2();
                    },
                    child: Text('Contanier2')),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeText();
        },
        child: Icon(Icons.invert_colors_on),
      ),
    );
  }

  void changeText() {
    setState(() {
      texttochange = 'MultiContainer';
    });
  }

  void changeText2() {
    setState(() {
      texttochange = 'Chat log';
    });
  }
}
