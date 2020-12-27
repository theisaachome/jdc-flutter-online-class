import 'package:bottomnavdemo/pages/cart-page.dart';
import 'package:bottomnavdemo/pages/home-page.dart';
import 'package:bottomnavdemo/pages/payment-page.dart';
import 'package:bottomnavdemo/pages/profile-page.dart';
import 'package:bottomnavdemo/pages/setting-page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _pageController = PageController();
  int _index = 0;
  List<Widget> screens = [
    HomePage(),
    CartPage(),
    PaymentPage(),
    ProfilePage(),
    SettingPage(),
  ];
  _onPageChange(_index) {
    print(_index);
    setState(() {
      _pageController.jumpToPage(_index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: screens,
        controller: _pageController,
        onPageChanged: _onPageChange,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _index,
          onTap: (i) {
            setState(() {
              _index = i;
              _pageController.jumpToPage(_index);
            });
          },
          items: AppMenu.values
              .map((e) => BottomNavigationBarItem(
                  icon: Icon(e.appMenuIcon), label: e.appMenuLabel))
              .toList()),
    );
  }
}

enum AppMenu {
  Home,
  Cart,
  Payment,
  Profile,
  Setting,
}

extension AppMenuExtension on AppMenu {
  String get appMenuLabel {
    switch (this) {
      case AppMenu.Home:
        return "Home";
        break;
      case AppMenu.Cart:
        return "Cart";
        break;
      case AppMenu.Payment:
        return "Payment";
        break;
      case AppMenu.Profile:
        return "Profile";
        break;
      case AppMenu.Setting:
        return "Seting";
        break;
      default:
        return null;
    }
  }

  IconData get appMenuIcon {
    switch (this) {
      case AppMenu.Home:
        return Icons.home;
        break;
      case AppMenu.Cart:
        return Icons.shopping_basket_outlined;
        break;
      case AppMenu.Payment:
        return Icons.payment;
        break;
      case AppMenu.Profile:
        return Icons.person_outline;
        break;
      case AppMenu.Setting:
        return Icons.settings;
        break;
      default:
        return null;
    }
  }
}
