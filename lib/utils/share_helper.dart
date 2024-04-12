

import 'package:shared_preferences/shared_preferences.dart';

void saveTheme({required bool changeTheme}) async {
  SharedPreferences shr = await SharedPreferences.getInstance();
  shr.setBool("theme", changeTheme);
}

Future<bool?> applyTheme() async {
  SharedPreferences shr = await SharedPreferences.getInstance();
  return shr.getBool("theme");
}

// void saveBookmark({required List <String>bookmark}) async {
//   SharedPreferences shr = await SharedPreferences.getInstance();
//   shr.setStringList("splash",bookmark );
// }
//
// Future<List <String>?> applyMark() async {
//   SharedPreferences shr = await SharedPreferences.getInstance();
//   return shr.getStringList("splash");
// }


