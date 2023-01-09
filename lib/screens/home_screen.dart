import 'package:flutter/material.dart';
import 'package:tutorial_flutter/router/app_routes.dart';
import 'package:tutorial_flutter/themes/app_theme.dart';
//import 'package:tutorial_flutter/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(title: const Text('Componentes de Flutter')),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: Icon(
                  menuOptions[index].icon,
                  color: AppTheme.primary,
                ),
                title: Text(menuOptions[index].name),
                onTap: () {
                  // final route = MaterialPageRoute(
                  //     builder: (context) => const ListView1Screen());

                  Navigator.pushNamed(context, menuOptions[index].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length),
    );
  }
}
