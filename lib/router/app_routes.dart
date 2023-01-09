import 'package:flutter/material.dart';
import 'package:tutorial_flutter/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'listview1',
        name: 'ListView Tipo 1',
        screen: const ListView1Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'listview2',
        name: 'ListView Tipo 2',
        screen: const ListView2Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'card',
        name: 'Tarjetas - Card',
        screen: const CardScreen(),
        icon: Icons.add_alert_outlined),
    MenuOption(
        route: 'alert',
        name: 'Alerts - Alertas',
        screen: const AlertScreen(),
        icon: Icons.credit_card),
    MenuOption(
        route: 'Avatar',
        name: 'Circle Avartar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOption(
        route: 'Animated',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_fill_outlined),
    MenuOption(
        route: 'Input',
        name: 'Text Inputs',
        screen: const InputScreen(),
        icon: Icons.input_rounded),
    MenuOption(
        route: 'Slider',
        name: 'Slider and Checks',
        screen: const SliderScreen(),
        icon: Icons.slow_motion_video_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'alert': (BuildContext context) => const AlertScreen()
  // };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
