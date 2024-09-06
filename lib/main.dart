import 'package:device_preview/device_preview.dart';
import 'package:top10sport/main_screen.dart';
import 'package:top10sport/state_util.dart';


import 'package:flutter/material.dart';

void main() => runApp(
  DevicePreview(
    enabled: true,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      title: 'WorldSport',
      navigatorKey: Get.navigatorKey,
      home: MainScreen(),
    );
  }
}
