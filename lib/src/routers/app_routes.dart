import 'package:app_componentes/src/screens/inputs_screen.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuModel>[
    MenuModel(
        router: 'listview1',
        name: 'ListView 1 Screen',
        screen: const ListViewType1Screen(),
        icon: Icons.list),
    MenuModel(
        router: 'listview2',
        name: 'ListView 2 Screen',
        screen: const ListViewType2Screen(),
        icon: Icons.list_alt),
    MenuModel(
        router: 'alert',
        name: 'Alert Screen',
        screen: const AlertScreen(),
        icon: Icons.home),
    MenuModel(
        router: 'card',
        name: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.home),
    MenuModel(
        router: 'avatar',
        name: 'Avatar Screen',
        screen: const AvatarScreen(),
        icon: Icons.align_vertical_top_sharp),
    MenuModel(
        router: 'container',
        name: 'container Screen',
        screen: const AnimatedScreen(),
        icon: Icons.animation),
    MenuModel(
        router: 'inputs',
        name: 'Inputs Screen',
        screen: const InputScreen(),
        icon: Icons.input)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final menu in menuOptions) {
      appRoutes.addAll({menu.router: (BuildContext context) => menu.screen});
    }
    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListViewType1Screen(),
  //   'listview2': (BuildContext context) => const ListViewType2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };
}
