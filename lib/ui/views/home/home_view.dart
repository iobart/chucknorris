import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:tribal/ui/views/home/widgets/home_list_menu_view.dart';

import '../../../core/di/locator.dart';
import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  final HomeViewModel _homeViewModel;

  HomeView({
    Key? key,
    HomeViewModel? homeViewModel,
  })  : _homeViewModel = homeViewModel ?? locator<HomeViewModel>(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body:  Center(
        child:HomeListMenuView(),
      ),
      floatingActionButton: SpeedDial(
        // Íconos para el Speed Dial
        onPress: () {
         _homeViewModel.getCurrentChuck();
        },
        animatedIcon: AnimatedIcons.add_event,
      ),
    );
  }

}
