import 'package:flutter/material.dart';
import 'package:testing2/Authentication/Social%20Auth/GoogleAuth.dart';
import 'package:testing2/Model/GetAllProductModel.dart';
import 'package:testing2/Model/ShopDataAPI.dart';
import 'package:testing2/Model/UserDataModel.dart';
import 'package:testing2/Model/GetAllProductModel.dart';
import 'package:testing2/Screen2/LoginShared.dart';
import 'package:testing2/Screen2/MyDashboard.dart';
import 'package:testing2/Screens/AppBarHome.dart';

import '../Amazon/AmazonHome.dart';
import '../Model/getAllProduct.dart';
import '../Screen2/AlertScreen.dart';
import '../Screen2/Drawer.dart';
import '../Screen2/GetCurrentLocation.dart';
import '../Screen2/ImageScreen.dart';

class Routers {
  static const String routeHomePage = '/homePage';
  static const String drawerScreen = '/drawerPage';
  static const String ytMobilePage = '/ytMobile';
  static const String ytWebPage = '/ytWeb';
  static const String amazonHome = '/amazonPage';
  static const String alertDialogPage = '/alertPage';
  static const String imageAlertScreen = '/imageAlert';
  static const String sharedPreferencesScreen = '/sharedPreferencePage';
  static const String loginScreen = '/loginScreen';
  static const String myDashboard = '/myDashboard';
  static const String userDataModel = '/UserData';
  static const String getLocation = '/getCurrentLocation';
  static const String googleAuthentication = '/googleAuth';
  static const String getAllProduct = '/getAllProduct';
  static const String getAllShop = '/getallShop';

  static Map<String, WidgetBuilder> getRouters() {
    return {
      Routers.amazonHome: (context) => AmazonHome(),
      Routers.drawerScreen: (context) => DrawerScreen(),
      Routers.alertDialogPage: (context) => AlertScreen(),
      Routers.imageAlertScreen: (context) => ImageScreen(),
      Routers.sharedPreferencesScreen: (context) => MyDashboard(),
      Routers.loginScreen: (context) => LoginPage(),
      Routers.myDashboard: (context) => MyDashboard(),
      Routers.routeHomePage: (context) => HomeScreenAppBar(),
      //Routers.userDataModel: (context) => ModelUserData(),
      Routers.getLocation: (context) => GetCurrentLocation(),
      Routers.googleAuthentication: (context) => GoogleAuth(),
      Routers.getAllProduct: (context) => GettingDataFromAPI(),
      Routers.getAllShop: (context) => ShopDataAPI()
    };
  }
}
