
import 'package:flutter/material.dart';
import 'package:tribal/core/di/locator.dart';
import 'package:tribal/ui/views/home/home_view_model.dart';


class HomeListMenuView extends StatelessWidget {
  final HomeViewModel _homeViewModel;

  HomeListMenuView({Key? key, HomeViewModel? homeViewModel})
      : _homeViewModel = homeViewModel ?? locator<HomeViewModel>();

  @override
  Widget build(BuildContext context) {
    return   ListTile(
                  title: Text(
                    '',
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 18),
                  ),
                  subtitle: Text(
                    'Precio: ',
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 16),
                  ),
                  trailing:const Icon(
                    Icons.production_quantity_limits_sharp,
                    color: Colors.greenAccent,
                    size: 22,
                  ),
    );
  }
}