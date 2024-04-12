
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/screen/home/provider/home_provider.dart';
import 'package:weather_app/utils/app_routs.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: HomeProvider()),
      ],
      child: Consumer<HomeProvider>(
          builder: (context, value, child) {
            value.getTheme();
            value.theme=value.changeTheme;
            return
              MaterialApp(
                debugShowCheckedModeBanner: false,
                routes: app_routs,
                theme: ThemeData.light(),
                darkTheme: ThemeData.dark(),
                themeMode: value.mode,
              );
          }
      ),
    ),
  );
}