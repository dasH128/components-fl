import 'package:app_componentes/src/routers/app_routes.dart';
import 'package:app_componentes/src/themes/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componenetes FLutter'),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) => ListTile(
                leading: Icon(
                  menuOptions[index].icon,
                  color: AppTheme.primary,
                ),
                title: Text(menuOptions[index].name),
                onTap: () {
                  Navigator.pushNamed(context, menuOptions[index].router);
                },
              ),
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemCount: menuOptions.length),
    );
  }
}
