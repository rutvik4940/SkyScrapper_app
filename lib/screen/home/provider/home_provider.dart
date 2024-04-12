import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/screen/home/model/model_screen.dart';
import 'package:weather_app/utils/api_helper.dart';

import '../../../utils/share_helper.dart';

class HomeProvider with ChangeNotifier {
  HomeModel? homeModel;
  bool isOn = true;
  bool theme =false;
  bool changeTheme = false;
  ThemeMode mode = ThemeMode.light;
  IconData themeMode = Icons.dark_mode;
  bool isLight=false;
  List <String> book=[];
  String? getUrl;


  Future<void> weatherGetData(String city) async {
    HomeModel? weatherdata = await APIHelper.apiHelper.weatherData(city);
      homeModel = weatherdata;
      notifyListeners();
  }
  void setTheme() async {
    theme = !theme;
    saveTheme(changeTheme: theme);
    changeTheme = (await applyTheme())!;
    if (changeTheme == true) {
      mode = ThemeMode.dark;
      themeMode = Icons.light_mode;
    } else if (changeTheme == false) {
      mode = ThemeMode.light;
      themeMode = Icons.dark_mode;
    }
    notifyListeners();
  }
  void getTheme() async {
    if (await applyTheme() == null) {
      changeTheme = false;
    } else {
      changeTheme = (await applyTheme())!;
    }
    if (changeTheme == true) {
      mode = ThemeMode.dark;
      themeMode = Icons.light_mode;
    } else if (changeTheme == false) {
      mode = ThemeMode.light;
      themeMode = Icons.dark_mode;
    } else {
      mode = ThemeMode.light;
      themeMode = Icons.dark_mode;
    }
    notifyListeners();
  }

  void checkinternet() {
    Connectivity().onConnectivityChanged.listen((List<ConnectivityResult> result)  {
      if(result.contains(ConnectivityResult.none) ) {
        isOn = false;
      }
      else
      {
        isOn=true;
      }
      notifyListeners();
    });

  }

}

