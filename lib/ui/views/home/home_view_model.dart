import 'package:flutter/cupertino.dart';
import 'package:tribal/core/di/locator.dart';
import 'package:tribal/core/use_cases/get_current_chuck_use_case.dart';

class HomeViewModel extends ChangeNotifier{

  final GetCurrentChuckUseCase _getCurrentChuckUseCase;

  HomeViewModel({
    GetCurrentChuckUseCase? getCurrentChuckUseCase,
  }) : _getCurrentChuckUseCase = getCurrentChuckUseCase ?? locator<GetCurrentChuckUseCase>();


  Future<String?> getCurrentChuck() async {
    final chuck = await _getCurrentChuckUseCase.invoke();
    return chuck?.value;
  }
}