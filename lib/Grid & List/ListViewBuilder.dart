import 'package:flutter/material.dart';
import 'package:testing2/config/colors.dart';

class ListViewBuilderPage extends StatefulWidget {
  const ListViewBuilderPage({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderPage> createState() => _ListViewBuilderPageState();
}

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {
  List time = [
    '4:30 PM',
    '4:15PM',
    '4:02PM',
    '3:45PM',
    '3:40PM',
    '3:25PM',
    '3:00PM',
    '2:00PM',
    '1:55PM',
    '11:55',
    '11:10',
    '11:00',
    '10:55',
    '10:30',
    '10:00'
  ];

  List assetImage = const [
    AssetImage('assets/png/kiwi.png'),
    AssetImage('assets/png/apple.png'),
    AssetImage('assets/png/mango.png'),
    AssetImage('assets/png/pomo.png'),
    AssetImage('assets/png/strawberry.png'),
    AssetImage('assets/png/kiwi.png'),
    AssetImage('assets/png/apple.png'),
    AssetImage('assets/png/mango.png'),
    AssetImage('assets/png/pomo.png'),
    AssetImage('assets/png/strawberry.png'),
  ];
  List networkImage = const [
    NetworkImage(
        'https://fastly.picsum.photos/id/331/200/200.jpg?hmac=otNh1Xx2hk_Tng_SFa60ayddRGORvWnDKJ2wG1l0KIE'),
    NetworkImage(
        'https://fastly.picsum.photos/id/331/200/200.jpg?hmac=otNh1Xx2hk_Tng_SFa60ayddRGORvWnDKJ2wG1l0KIE'),
    NetworkImage(
        'https://fastly.picsum.photos/id/331/200/200.jpg?hmac=otNh1Xx2hk_Tng_SFa60ayddRGORvWnDKJ2wG1l0KIE'),
    NetworkImage(
        'https://fastly.picsum.photos/id/331/200/200.jpg?hmac=otNh1Xx2hk_Tng_SFa60ayddRGORvWnDKJ2wG1l0KIE'),
    NetworkImage(
        'https://fastly.picsum.photos/id/331/200/200.jpg?hmac=otNh1Xx2hk_Tng_SFa60ayddRGORvWnDKJ2wG1l0KIE'),
  ];
  //List assetAndNetworkImage = [assetImage.addAll(networkImage)];
/*
  void assetNet() {
    assetImage.addAll(networkImage);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    assetNet();
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListViewBuilder'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView.builder(
            itemCount: time.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: SVTTrainingColors.whiteColor,
                  backgroundImage: AssetImage('assets/jpeg/face4.jpg'),
                ),
                title: Text('Friend ${index + 1}'),
                subtitle: const Text('Catch you later'),
                trailing: Text(time[index]),
              );
            }),
      ),
    );
  }
}
