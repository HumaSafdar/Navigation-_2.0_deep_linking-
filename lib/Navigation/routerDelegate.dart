import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigator_2_deep_linking/pages/my_Home_Page.dart';
import 'package:navigator_2_deep_linking/pages/page_builder.dart';

class MyRouterDelegate extends RouterDelegate<RouteSettings>

    with ChangeNotifier, PopNavigatorRouterDelegateMixin {

  static MyRouterDelegate of(BuildContext context) {

    var delegate = Router.of(context).routerDelegate;

    assert(delegate is MyRouterDelegate);

    return delegate as MyRouterDelegate;
  }

  final List<RouteSettings> _stack = <RouteSettings>[
    const RouteSettings(name: MyHomePage.PageName)
  ];
  pop() {
    if (_stack.isNotEmpty) {
      _stack.remove(_stack.last);
      notifyListeners();
    }
  }

  push(RouteSettings settings) {
    _stack.add(settings);
    notifyListeners();
  }

  @override
  RouteSettings? get currentConfiguration => _stack.isNotEmpty
      ? _stack.last
      : const RouteSettings(name: MyHomePage.PageName);



  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: [
        for (RouteSettings settings in _stack) PageBuilder.build(settings)
      ],
      onPopPage: onPopPage,
    );
  }



  bool onPopPage(Route<dynamic> route, result) {
    if (_stack.isNotEmpty) {
      if (_stack.last == route.settings) {
        _stack.remove(_stack.last);
        notifyListeners();
      }
    }
    return route.didPop(result);
  }



  @override
  GlobalKey<NavigatorState>? get navigatorKey => GlobalKey<NavigatorState>();

  @override
  Future<void> setNewRoutePath(RouteSettings configuration) {
    _stack
      ..clear()
      ..add(configuration);
    return SynchronousFuture(null);
  }
}
