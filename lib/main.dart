import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:testing2/config/routers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //scrollBehavior: MaterialScrollBehavior()
        //  .copyWith(dragDevices: {PointerDeviceKind.mouse}),
        debugShowCheckedModeBanner: false,
        routes: Routers.getRouters(),
        title: 'Flutter Demo',
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(brightness: Brightness.dark),
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.green,
        ),
        initialRoute: Routers.routeHomePage
        //home: const SecondPage(title: 'Flutter Demo Home Page'),
        );
  }
}

const mobileWidth = 480;
const tabletWidth = 900;
const desktopWidth = 1180;

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    Key? key,
    this.mobileView,
    this.tabletView,
    this.desktopView,
  }) : super(key: key);
  final Widget? mobileView;
  final Widget? tabletView;
  final Widget? desktopView;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, dimens) {
      if (dimens.maxWidth <= tabletWidth) {
        if (dimens.maxWidth <= mobileWidth) {
          return mobileView ?? Text("Mobile view");
        } else {
          return tabletView ?? Text("Tablet view");
        }
      } else {
        return desktopView ?? Text("Desktop view");
      }
    });
  }
}

class CourseScreen extends StatelessWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        //mobileView: YouTubeHomeScreen(),
        //desktopView: YTWebHome(),
        );
  }
}
