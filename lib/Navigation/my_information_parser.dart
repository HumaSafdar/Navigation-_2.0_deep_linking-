import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:navigator_2_deep_linking/pages/Error_page.dart';
import 'package:navigator_2_deep_linking/pages/page_builder.dart';

class MyRouteInformationparser extends RouteInformationParser<RouteSettings>{
  @override
  Future<RouteSettings> parseRouteInformation(RouteInformation routeInformation) {
    
    var settings=RouteSettings(name: routeInformation.location);
    if(PageBuilder.isValidPath(settings)){
      return SynchronousFuture(settings);
    }
    return SynchronousFuture(const RouteSettings(name: Error_page.PageName));
  }
 @override
  RouteInformation? restoreRouteInformation(RouteSettings configuration) {
    
    if(PageBuilder.isValidPath(configuration)){
       return RouteInformation(location:configuration.name);
    }
    return const RouteInformation(location: Error_page.PageName);
  }
}
