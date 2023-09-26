// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chuck_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChuckDto _$ChuckDtoFromJson(Map<String, dynamic> json) => ChuckDto(
      categories: json['categories'] as List<dynamic>?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      iconUrl: json['icon_url'] as String?,
      id: json['id'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      url: json['url'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$ChuckDtoToJson(ChuckDto instance) => <String, dynamic>{
      'categories': instance.categories,
      'created_at': instance.createdAt?.toIso8601String(),
      'icon_url': instance.iconUrl,
      'id': instance.id,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'url': instance.url,
      'value': instance.value,
    };
