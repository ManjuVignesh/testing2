/*import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'ModelSVTClass.dart';

class ModelUserData extends StatefulWidget {
  const ModelUserData({Key? key}) : super(key: key);

  @override
  State<ModelUserData> createState() => _ModelUserDataState();
}

class _ModelUserDataState extends State<ModelUserData> {
/*
  void initState() {
    // TODO: implement initState
    getUserDataFromAPI();
    super.initState();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('User Data'),
        ),
        body: FutureBuilder<List>(
            future: getUserDataFromAPI(),
            builder: (context, snapshot) {
              if (snapshot.data == null && !snapshot.hasData) {
                return const Center(
                  child: SingleChildScrollView(),
                );
              } else {
                return ListView.builder(
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(snapshot.data![index].id.toString()),
                        subtitle: Text(snapshot.data![index].body),
                      );
                    });
              }
            }));
  }

  Future<List> getUserDataFromAPI() async {
    List<Welcome> _welcome = <Welcome>[];

    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    var welcome = <Welcome>[];
    debugPrint('checkResponse ${response.body}');

    if (response.statusCode == 200) {
      var welcomeJson = json.decode(response.body);
      for (var WelcomeJson in welcomeJson) {
        welcome.add(Welcome.fromJson(WelcomeJson));
      }
    }
    return welcome;
  }
}
*/
