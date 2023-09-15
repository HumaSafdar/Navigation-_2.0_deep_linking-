import 'dart:ui';

import 'package:flutter/material.dart';

class Error_page extends StatefulWidget {
  const Error_page({super.key});
  static const PageName=" ErrorPage";

  @override
  State<Error_page> createState() => _Error_pageState();
}

class _Error_pageState extends State<Error_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Error Page',
        ),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: 50,
          color: Colors.red,
          child: Row(
            children: [
              Icon(
                Icons.error,
              ),
              Text('404:Page Not Found',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}
