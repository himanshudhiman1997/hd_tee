import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hd_tee/HomeScreen/home_screen.dart';
import 'package:hd_tee/common_utils/values/palettes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light
      ),
      home: HomeScreen(),
    );
  }
}
