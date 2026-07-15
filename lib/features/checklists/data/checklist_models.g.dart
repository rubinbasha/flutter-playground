// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChecklistPageDto _$ChecklistPageDtoFromJson(Map<String, dynamic> json) =>
    _ChecklistPageDto(
      totalCount: (json['totalCount'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ChecklistItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChecklistPageDtoToJson(_ChecklistPageDto instance) =>
    <String, dynamic>{'totalCount': instance.totalCount, 'data': instance.data};

_ChecklistItemDto _$ChecklistItemDtoFromJson(Map<String, dynamic> json) =>
    _ChecklistItemDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      checklistcategoryName: json['checklistcategoryName'] as String?,
      appgroupName: json['appgroupName'] as String?,
    );

Map<String, dynamic> _$ChecklistItemDtoToJson(_ChecklistItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'checklistcategoryName': instance.checklistcategoryName,
      'appgroupName': instance.appgroupName,
    };

_ChecklistDetailsDto _$ChecklistDetailsDtoFromJson(Map<String, dynamic> json) =>
    _ChecklistDetailsDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      checklistcategoryName: json['checklistcategoryName'] as String?,
      appgroupName: json['appgroupName'] as String?,
      dateCreated: json['dateCreated'] as String?,
      lastUpdated: json['lastUpdated'] as String?,
      fforwardbody: json['fforwardbody'] as String?,
    );

Map<String, dynamic> _$ChecklistDetailsDtoToJson(
  _ChecklistDetailsDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'checklistcategoryName': instance.checklistcategoryName,
  'appgroupName': instance.appgroupName,
  'dateCreated': instance.dateCreated,
  'lastUpdated': instance.lastUpdated,
  'fforwardbody': instance.fforwardbody,
};
