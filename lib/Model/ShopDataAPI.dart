import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'ShopDataModel.dart';

class ShopDataAPI extends StatefulWidget {
  const ShopDataAPI({Key? key}) : super(key: key);

  @override
  State<ShopDataAPI> createState() => _ShopDataAPIState();
}

class _ShopDataAPIState extends State<ShopDataAPI> {
  Future<List<ShopData>> fetchData() async {
    Response r = await get(
        Uri.parse(
            'https://data.mongodb-api.com/app/point-kprrz/endpoint/getAllShop'),
        headers: <String, String>{
          "apiKey":
              'GYTsM4UTZmIQBU8tFJsFbXUA1UHm3SGHiTh6ZlLZCBxE84Cs6SaiCUlHtJ5yYFu8',
          "Accept": "application/json",
          "Content-Type": 'application/json'
        });
    if (r.statusCode == 200) {
      final List<dynamic> data = jsonDecode(r.body);
      return data.map((json) => ShopData.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShopData'),
      ),
      body: FutureBuilder<List<ShopData>>(
          future: fetchData(),
          builder: (context, snapshot) {
            final List<ShopData>? data = snapshot.data;
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: data?.length,
                  itemBuilder: (context, index) {
                    final ShopData post = data![index];
                    return ListTile(
                      title: Text("${post.shopname}"),
                      subtitle: Text('${post.id.toString()}'),
                      leading: CircleAvatar(
                          //backgroundImage: NetworkImage("${post.image}"),
                          ),
                    );
                  });
            } else if (snapshot.hasError) {
              return Text('Failed to load data: ${snapshot.error}');
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }
}
