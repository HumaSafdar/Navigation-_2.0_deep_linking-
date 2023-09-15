import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:navigator_2_deep_linking/Navigation/routerDelegate.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);
   static const PageName=" /SeondPage";
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SecondPage',
        ),
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: () {
          MyRouterDelegate.of(context).pop();
        },
        child: const Icon(Icons.close),
      ),
   
    );
  }
}
