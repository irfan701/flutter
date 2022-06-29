import 'package:day_eight/bottom_nav_controller.dart';
import 'package:day_eight/languages/Languages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        translations: Languages(),
        //locale: Get.deviceLocale,
        // locale: Locale('en', 'US'),
        locale: Locale('bn', 'BD'),
        fallbackLocale: Locale('en', 'US'),
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            brightness: Brightness.dark,
            textTheme: TextTheme(
              headline6: TextStyle(fontSize: 10),
              bodyText2: TextStyle(fontSize: 90, color: Colors.blueGrey),
            ),
            //scaffoldBackgroundColor: Color.fromARGB(255, 235, 27, 27)),
            floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: Colors.amber,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                ))),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(primary: Colors.greenAccent))),
        home: BottomNavController());
  }
}
