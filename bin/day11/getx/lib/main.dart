import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/HomeScreen.dart';
import 'package:getx/routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      initialRoute: homeScreen,
      getPages: GetPages,
    );
  }
}
