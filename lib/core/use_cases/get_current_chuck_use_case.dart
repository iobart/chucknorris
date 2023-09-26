import 'package:tribal/core/data/home/i_chuck_home_repository.dart';
import 'package:tribal/core/di/locator.dart';
import 'package:tribal/core/dtos/chuck_dto.dart';

class GetCurrentChuckUseCase {
  final IChuckHomeRepository _iChuckHomeRepository;

  GetCurrentChuckUseCase({
    IChuckHomeRepository? iChuckHomeRepository,
  }) : _iChuckHomeRepository =
            iChuckHomeRepository ?? locator<IChuckHomeRepository>();

  invoke() async {
    final ChuckDto? b = await _iChuckHomeRepository.getChuckJoke();
    //converts as ChuckModel
    print(b);
  }
}
