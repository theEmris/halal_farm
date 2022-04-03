import 'package:flutter/material.dart';
import 'package:halal_farm/screens/basic/bottomNaavBAr/bottomNavBar.dart';
import 'package:halal_farm/screens/basic/myHomePage.dart';
import 'package:halal_farm/screens/main/homePage.dart';
import 'package:halal_farm/screens/main/lanChoosing.dart';

class RouteBloc {
  Route? onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => HomePage());

      case "/languageChoosing":
        return MaterialPageRoute(builder: (context) => LanguageChoosing());

      // case "/asosiyPage":
      //   return MaterialPageRoute(builder: (context) => MyHomePage());
      // case "/searchPage":
      //   return MaterialPageRoute(builder: (context) => MyHomePage());
      // case "/NotificationPage":
      //   return MaterialPageRoute(builder: (context) => MyHomePage());
      // case "/ProfilePage":
      //   return MaterialPageRoute(builder: (context) => MyHomePage());

      case "/bottomNav":
        return MaterialPageRoute(builder: (context) => BottomNavBar());

      default:
    }
  }
}
