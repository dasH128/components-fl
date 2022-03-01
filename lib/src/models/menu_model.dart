import 'package:flutter/material.dart' show IconData, Widget;

class MenuModel {
  final String router;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuModel(
      {required this.router,
      required this.icon,
      required this.name,
      required this.screen});
}
