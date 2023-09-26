import 'package:tribal/core/data/home/i_chuck_home_repository.dart';
import 'package:tribal/core/di/locator.dart';
import 'package:tribal/core/dtos/chuck_dto.dart';

import 'chuck_home_remote_data_source.dart';

class HomeChuckRepository implements IChuckHomeRepository {
  final ChuckRemoteDataSource _chuckRemoteDataSource;

  HomeChuckRepository({
    ChuckRemoteDataSource? chuckRemoteDataSource,
  }) : _chuckRemoteDataSource =
            chuckRemoteDataSource ?? locator<ChuckRemoteDataSource>();

  @override
  Future<ChuckDto?> getChuckJoke() {
    return _chuckRemoteDataSource.getChuck();
  }
}
