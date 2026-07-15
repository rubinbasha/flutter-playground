import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist_models.freezed.dart';
part 'checklist_models.g.dart';

@freezed
abstract class ChecklistPageDto with _$ChecklistPageDto {
  const factory ChecklistPageDto({
    int? totalCount,
    List<ChecklistItemDto>? data,
  }) = _ChecklistPageDto;

  factory ChecklistPageDto.fromJson(Map<String, dynamic> json) =>
      _$ChecklistPageDtoFromJson(json);
}

@freezed
abstract class ChecklistItemDto with _$ChecklistItemDto {
  const factory ChecklistItemDto({
    String? id,
    String? name,
    String? checklistcategoryName,
    String? appgroupName,
  }) = _ChecklistItemDto;

  factory ChecklistItemDto.fromJson(Map<String, dynamic> json) =>
      _$ChecklistItemDtoFromJson(json);
}

@freezed
abstract class ChecklistDetailsDto with _$ChecklistDetailsDto {
  const factory ChecklistDetailsDto({
    String? id,
    String? name,
    String? checklistcategoryName,
    String? appgroupName,
    String? dateCreated,
    String? lastUpdated,
    String? fforwardbody,
  }) = _ChecklistDetailsDto;

  factory ChecklistDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$ChecklistDetailsDtoFromJson(json);
}
