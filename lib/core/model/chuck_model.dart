import 'package:tribal/core/dtos/chuck_dto.dart';

class ChuckModel {
  List<dynamic>? categories;
  DateTime? createdAt;
  String? iconUrl;
  String? id;
  DateTime? updatedAt;
  String? url;
  String? value;
  ChuckModel({
    this.categories,
    this.createdAt,
    this.iconUrl,
    this.id,
    this.updatedAt,
    this.url,
    this.value,
  });

  ChuckModel.fromChuckDto(ChuckDto dto){
   categories = dto.categories;
    createdAt = dto.createdAt;
    iconUrl = dto.iconUrl;
    id = dto.id;
   updatedAt = dto.updatedAt;
    url = dto.url;
    value = dto.value;
  }

  static ChuckModel? fromDTO({
    required ChuckDto dto,
  }) {
    if (dto.id == null || dto.value == null) {
      return null;
    }
    return ChuckModel(
      categories: dto.categories,
      createdAt: dto.createdAt,
      iconUrl: dto.iconUrl,
      id: dto.id,
      updatedAt: dto.updatedAt,
      url: dto.url,
      value: dto.value,
    );
  }
}