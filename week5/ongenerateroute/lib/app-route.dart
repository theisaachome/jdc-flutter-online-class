import 'package:flutter/material.dart';
import 'package:ongenerateroute/pages/home-page.dart';
import 'package:ongenerateroute/pages/profile-page.dart';
import 'package:ongenerateroute/pages/search-page.dart';
import 'package:ongenerateroute/pages/setting-page.dart';
import 'package:ongenerateroute/pages/setting-pages/about-phone.dart';
import 'package:ongenerateroute/pages/setting-pages/bluetooth.dart';
import 'package:ongenerateroute/pages/setting-pages/security.dart';
import 'package:ongenerateroute/pages/setting-pages/wifi.dart';

class MyAppRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MyHomePage.routeName:
        return MaterialPageRoute(
            builder: (c) => MyHomePage(title: "On Generate Route"));
        break;
      case ProfilePage.routeName:
        return MaterialPageRoute(builder: (c) => ProfilePage());
        break;
      case SearchPage.routeName:
        return MaterialPageRoute(builder: (c) => SearchPage());
        break;
      case SettingPage.routeName:
        return MaterialPageRoute(builder: (c) => SettingPage());
        break;
      case AboutPhonePage.routeName:
        return MaterialPageRoute(builder: (c) => AboutPhonePage());
        break;
      case BluetoothPage.routeName:
        return MaterialPageRoute(builder: (c) => BluetoothPage());
        break;
      case SecurityPage.routeName:
        return MaterialPageRoute(builder: (c) => SecurityPage());
        break;
      case WifiPage.routeName:
        return MaterialPageRoute(builder: (c) => WifiPage());
        break;
      default:
        return null;
    }
  }
}
