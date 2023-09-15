import 'package:flutter/material.dart';
import 'package:navigator_2_deep_linking/Navigation/routerDelegate.dart';
import 'package:navigator_2_deep_linking/pages/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});
  static const PageName="/";
   
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MyHomePage',
        ),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
              MyRouterDelegate.of(context)
        .push(const RouteSettings(name: SecondPage.PageName));
          },
          child: Center(
            child: Text(
              'Next',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ),
          ),
        ),
      ),
    );
  }
}
