import 'package:flutter/material.dart';
import 'package:testing2/Amazon/AmazonHome.dart';
import 'package:testing2/Grid%20&%20List/GridViewBuilder.dart';
import 'package:testing2/Grid%20&%20List/ListViewBuilder.dart';
import 'package:testing2/Grid%20&%20List/ListViewSeparator.dart';
import 'package:testing2/Grid%20&%20List/NoListTile.dart';
import 'package:testing2/Screen2/MultiContainerWithScroll.dart';
import 'package:testing2/Screen2/WorkInfo.dart';
import 'package:testing2/YTweb/YTWebHome.dart';
import 'package:testing2/config/routers.dart';
import 'package:testing2/youtube/YouTubeHomePage.dart';

import '../Grid & List/GridView.dart';
import '../Grid & List/GridViewCount.dart';
import '../Grid & List/ListView.dart';
import '../Screens/CallsScreen.dart';
import 'AlertScreen.dart';
import 'College.dart';
import 'Columns.dart';
import 'ColumnsAndRows.dart';
import 'Rows.dart';
import 'School.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(children: [
          UserAccountsDrawerHeader(
            accountName: Text('Manju'),
            accountEmail: Text("manjubhargavi30@gmail.com"),
            currentAccountPicture: CircleAvatar(),
          ),
          ListTile(
              leading: Icon(Icons.home),
              title: Text('YouTube'),
              trailing: Icon(Icons.forward),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => YouTubeHomeScreen()));
              }),
          ListTile(
              leading: Icon(Icons.home_filled),
              title: Text("YouTube web"),
              trailing: Icon(Icons.forward),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => YTWebHome()));
              }),
          ListTile(
              leading: Icon(Icons.home_filled),
              title: Text("Amazon"),
              trailing: Icon(Icons.alternate_email),
              onTap: () {
                Navigator.pushNamed(context, Routers.amazonHome);
                //Navigator.push(context,
                //  MaterialPageRoute(builder: (context) => AmazonHome()));
              }),
          ListTile(
              leading: Icon(Icons.location_on),
              title: Text("Google Map"),
              onTap: () {
                Navigator.pushNamed(context, Routers.getLocation);
                //Navigator.push(context,
                //  MaterialPageRoute(builder: (context) => AmazonHome()));
              }),
          ExpansionTile(title: Text(' API Model'), children: [
            ListTile(
                leading: Icon(Icons.add_alert),
                title: Text("Product Data"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pushNamed(context, Routers.getAllProduct);
                }),
            ListTile(
                leading: Icon(Icons.add_alert),
                title: Text("Shop Data"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pushNamed(context, Routers.getAllShop);
                })
          ]),
          ListTile(
              leading: Icon(Icons.add_alert),
              title: Text("Google Auth"),
              onTap: () {
                Navigator.pushNamed(context, Routers.googleAuthentication);
              }),
          ListTile(
              leading: Icon(Icons.add_alert),
              title: Text("Alert Dialog"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pushNamed(context, Routers.alertDialogPage);
              }),
          ListTile(
              leading: Icon(Icons.share),
              title: Text("Shared Preferences"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pushNamed(context, Routers.sharedPreferencesScreen);
              }),
          ListTile(
              leading: Icon(Icons.add_alert),
              title: Text("Alert Dialog Image"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pushNamed(context, Routers.imageAlertScreen);
              }),
          ExpansionTile(
            leading: Icon(Icons.school),
            title: Text('Education'),
            children: [
              ListTile(
                  leading: Icon(Icons.home),
                  title: Text('School'),
                  trailing: Icon(Icons.arrow_forward),
                  subtitle: Text('School Details'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => School()));
                  }),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('College'),
                trailing: Icon(Icons.arrow_forward),
                subtitle: Text('College Info'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => College()));
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Work'),
                trailing: Icon(Icons.arrow_forward),
                subtitle: Text('Work Experience'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WorkInfo()));
                },
              ),
            ],
          ),
          ExpansionTile(
            leading: Icon(Icons.art_track),
            title: Text("Columns & Rows"),
            children: [
              ListTile(
                leading: Icon(Icons.ac_unit),
                title: Text('Column'),
                trailing: Icon(Icons.view_column_outlined),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Columns()));
                },
              ),
              ListTile(
                leading: Icon(Icons.ac_unit),
                title: Text('Rows'),
                trailing: Icon(Icons.table_rows_outlined),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Rows()));
                },
              ),
              ListTile(
                leading: Icon(Icons.ac_unit),
                title: Text('Columns & Rows'),
                trailing: Icon(Icons.table_chart_rounded),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ColumnsAndRows()));
                },
              )
            ],
          ),
          ExpansionTile(
            leading: Icon(Icons.ballot_outlined),
            title: Text('List & Grid'),
            children: [
              ListTile(
                leading: Icon(Icons.list_alt),
                title: Text('ListView'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListViewPage(
                                title: 'Calls',
                              )));
                },
              ),
              ListTile(
                leading: Icon(Icons.list_alt),
                title: Text('ListViewSeparator'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListViewSeparatorPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.grid_4x4_rounded),
                title: Text('GridView'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GridViewPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.grid_4x4_rounded),
                title: Text('GridView Count'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GridViewCountPage()));
                },
              )
            ],
          ),
          ListTile(
            leading: Icon(Icons.tab),
            title: Text('MultiContainer'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MultiContainerWithScroll()));
            },
          ),
          ListTile(
            leading: Icon(Icons.list_alt),
            title: Text('ListViewBuilder'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ListViewBuilderPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.grid_4x4_rounded),
            title: Text('GridView Builder'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GridViewBuilderPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.grid_4x4_rounded),
            title: Text('Images & Text'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ImagesAndText()));
            },
          ),
          ListTile(
            leading: Icon(Icons.add_alert),
            title: Text('Alert Dialog'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AlertScreen()));
            },
          ),
        ]),
      ),
    );
  }
}
