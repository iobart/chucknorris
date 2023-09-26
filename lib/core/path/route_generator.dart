import 'package:flutter/material.dart';
import 'package:tribal/core/utils/image_utils.dart';
import 'package:tribal/ui/views/home/home_view.dart';
import 'package:tribal/ui/views/home/home_view_model.dart';


import '../constans/desing_constants.dart';
import '../constans/route_constans.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case homeRoute:
        final HomeViewModel viewModel = settings.arguments != null
            ? settings.arguments as HomeViewModel
            : HomeViewModel();
        return MaterialPageRoute<void>(
          builder: (BuildContext context) => HomeView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: getLottieFromJson(
                  fit: BoxFit.contain, height: 300, lottie: kWrongRoute),
            ),
          ),
        );
    }
  }
}
