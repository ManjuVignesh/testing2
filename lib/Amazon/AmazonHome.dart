import 'package:flutter/material.dart';

class AmazonHome extends StatefulWidget {
  const AmazonHome({Key? key}) : super(key: key);

  @override
  State<AmazonHome> createState() => _AmazonHomeState();
}

class _AmazonHomeState extends State<AmazonHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff88d7de), Color(0xffa6ede5)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight),
          ),
          height: 115,
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 90,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                          height: 50,
                          width: 390,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(color: Colors.grey)),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Search Amazon.in',
                                prefixIcon: InkWell(
                                  onTap: () {},
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 6),
                                    child: Icon(
                                      Icons.search,
                                      color: Colors.black,
                                      size: 23,
                                    ),
                                  ),
                                ),
                                suffixIcon: const Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.black,
                                )),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 40,
          color: Color(0xffa6ede5),
          child: Row(
            children: [
              SizedBox(width: 10),
              Icon(Icons.location_on_outlined, size: 27),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Delivery to Manju... - Pondich... 605005',
                  style: TextStyle(fontSize: 18),
                ),
              ))
            ],
          ),
        ),
      ],
    ));
  }
}
