import 'package:json_annotation/json_annotation.dart';
part 'chuck_dto.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class ChuckDto{
   List<dynamic>? categories;
   DateTime? createdAt;
   String? iconUrl;
   String? id;
   DateTime? updatedAt;
   String? url;
   String? value;
   ChuckDto({
      this.categories,
      this.createdAt,
      this.iconUrl,
      this.id,
      this.updatedAt,
      this.url,
      this.value,
   });
   factory ChuckDto.fromChuckModel(ChuckDto dto){
     return ChuckDto(
       categories: dto.categories,
       createdAt: dto.createdAt,
       iconUrl: dto.iconUrl,
       id: dto.id,
       updatedAt: dto.updatedAt,
       url: dto.url,
       value: dto.value,
     );
   }

    factory ChuckDto.fromJson(Map<String, dynamic> json) => _$ChuckDtoFromJson(json);
    Map<String, dynamic> toJson() => _$ChuckDtoToJson(this);
}