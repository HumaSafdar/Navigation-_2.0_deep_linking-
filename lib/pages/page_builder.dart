import 'package:flutter/cupertino.dart';
import 'package:navigator_2_deep_linking/main.dart';
import 'package:navigator_2_deep_linking/pages/Error_page.dart';
import 'package:navigator_2_deep_linking/pages/my_Home_Page.dart';
import 'package:navigator_2_deep_linking/pages/my_page.dart';
import 'package:navigator_2_deep_linking/pages/second_page.dart';

class PageBuilder {
  static Page build(RouteSettings settings) {
    if (settings.name == MyHomePage.PageName) {
      return MyPage(
          page: const MyHomePage(title: 'Home Page'),
          name: settings.name!,
          arguments: settings.arguments);
    } else if (settings.name == SecondPage.PageName) {
      return MyPage(
          page: const SecondPage(),
          name: settings.name!,
          arguments: settings.arguments);
    } else {
      return MyPage(
          page: const Error_page(),
          name: settings.name!,
          arguments: settings.arguments);
    }
  }

  static bool isValidPath(RouteSettings settings) {
    return settings.name == MyHomePage.PageName ||
        settings.name == SecondPage.PageName;
      
  }
  
}
