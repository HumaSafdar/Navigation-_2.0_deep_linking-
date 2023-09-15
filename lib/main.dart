import 'package:flutter/material.dart';
import 'package:navigator_2_deep_linking/Navigation/my_information_parser.dart';
import 'package:navigator_2_deep_linking/Navigation/routerDelegate.dart';
import 'package:navigator_2_deep_linking/pages/Error_page.dart';
import 'package:navigator_2_deep_linking/pages/my_Home_Page.dart';
import 'package:navigator_2_deep_linking/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: MyRouterDelegate(),
      routeInformationParser: MyRouteInformationparser(),
    );
  }
}

