import 'package:tribal/core/dtos/chuck_dto.dart';

abstract class IChuckHomeRepository {

  Future<ChuckDto?> getChuckJoke();
}