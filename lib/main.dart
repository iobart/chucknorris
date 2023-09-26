import 'package:flutter/material.dart';

import 'core/constans/route_constans.dart';
import 'core/di/locator.dart';
import 'core/path/route_generator.dart';

void main() {
  setUpLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final _mainkey = GlobalKey<FormState>();
    return MaterialApp(
      title: 'Flutter Demo',
      key: _mainkey,
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      initialRoute: homeRoute,
      onGenerateRoute: RouteGenerator.generateRoute,
    );

  }
}


