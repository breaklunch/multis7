
import 'package:flutter/material.dart';
import 'package:lab07/models/menu_options.dart';
import 'package:lab07/screens/card_screen.dart';
import 'package:lab07/screens/home_screen.dart';



class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'card',
        icon: Icons.card_membership,
        name: 'Card Screen',
        screen: const CardScreen()),
    
  ];

  /*
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
    'card': (BuildContext context) => const CardScreen(),
    'alert': (BuildContext context) => const AlertScreen()
  };*/

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> rutasnuevas = {};
    for (final opciones in menuOptions) {
      rutasnuevas
          .addAll({opciones.route: (BuildContext context) => opciones.screen});
    }
    return rutasnuevas;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
