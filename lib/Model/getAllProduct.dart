import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'GetAllProductModel.dart';

class GettingDataFromAPI extends StatefulWidget {
  const GettingDataFromAPI({Key? key}) : super(key: key);

  @override
  State<GettingDataFromAPI> createState() => _GettingDataFromAPIState();
}

class _GettingDataFromAPIState extends State<GettingDataFromAPI> {
  Future<List<MongodbData>> fetchData() async {
    Response r = await get(
        Uri.parse(
            'https://data.mongodb-api.com/app/point-kprrz/endpoint/getAllProduct'),
        headers: <String, String>{
          "apiKey":
              'GYTsM4UTZmIQBU8tFJsFbXUA1UHm3SGHiTh6ZlLZCBxE84Cs6SaiCUlHtJ5yYFu8',
          "Accept": "application/json",
          "Content-Type": 'application/json'
        });
    if (r.statusCode == 200) {
      final List<dynamic> data = jsonDecode(r.body);
      return data.map((json) => MongodbData.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Data'),
      ),
      body: FutureBuilder<List<MongodbData>>(
          future: fetchData(),
          builder: (context, snapshot) {
            final List<MongodbData>? data = snapshot.data;
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: data?.length,
                  itemBuilder: (context, index) {
                    final MongodbData post = data![index];
                    return ListTile(
                      title: Text("${post.discountData?.id}"),
                      subtitle: Text('${post.name}'),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage("${post.image}"),
                      ),
                    );
                  });
            } else if (snapshot.hasError) {
              return Text('Failed to Load data: ${snapshot.error}');
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }
}
