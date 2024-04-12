import 'package:flutter/material.dart';
import 'package:weather_app/screen/home/view/splesh_screen.dart';

import '../screen/home/view/home_screen.dart';

Map<String,WidgetBuilder>app_routs= {
  "/":(context) => const SpleshScreen(),
  "home": (context) =>const HomeScreen(),

};