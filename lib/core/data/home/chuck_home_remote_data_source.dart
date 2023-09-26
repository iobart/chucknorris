import 'package:tribal/core/api/chuck_api.dart';
import 'package:tribal/core/di/locator.dart';
import 'package:tribal/core/dtos/chuck_dto.dart';

class ChuckRemoteDataSource {
  final ChuckApi _chuckApi;

  ChuckRemoteDataSource({
    ChuckApi? chuckApi,
  }) : _chuckApi = chuckApi ?? locator<ChuckApi>();

  Future<ChuckDto?> getChuck() {

    return _chuckApi.getChuckJoke();
  }
}
