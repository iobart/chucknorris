import 'package:get_it/get_it.dart';
import 'package:tribal/core/api/chuck_api.dart';
import 'package:tribal/core/data/home/home_chuck_repository.dart';
import 'package:tribal/core/data/home/i_chuck_home_repository.dart';
import 'package:tribal/core/use_cases/get_current_chuck_use_case.dart';
import 'package:tribal/ui/views/home/home_view_model.dart';

import '../data/home/chuck_home_remote_data_source.dart';

GetIt locator = GetIt.instance..allowReassignment = true;

void setUpLocator() {
  locator

    //Api
    ..registerLazySingleton<ChuckApi>(() => ChuckApi())

    //Repository
    ..registerLazySingleton<HomeChuckRepository>(() => HomeChuckRepository())

    //useCases
    ..registerLazySingleton<GetCurrentChuckUseCase>(
        () => GetCurrentChuckUseCase())

    //viewModels
    ..registerLazySingleton<HomeViewModel>(() => HomeViewModel())

    //dataSources
    ..registerLazySingleton<ChuckRemoteDataSource>(
        () => ChuckRemoteDataSource());
}
