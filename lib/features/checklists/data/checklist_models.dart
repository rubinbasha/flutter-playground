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
    @JsonKey(name: 'checklistcategoryName') String? checklistCategoryName,
    @JsonKey(name: 'appgroupName') String? appGroupName,
  }) = _ChecklistItemDto;

  factory ChecklistItemDto.fromJson(Map<String, dynamic> json) =>
      _$ChecklistItemDtoFromJson(json);
}

@freezed
abstract class ChecklistDetailsDto with _$ChecklistDetailsDto {
  const factory ChecklistDetailsDto({
    String? id,
    String? name,
    String? lastUpdated,
    String? dateCreated,
    int? standard,
    @JsonKey(name: 'commonwrite') bool? commonWrite,
    @JsonKey(name: 'istemp') bool? isTemp,
    bool? deleted,
    @JsonKey(name: 'editright') bool? editRight,
    @JsonKey(name: 'fontstyle') String? fontStyle,
    @JsonKey(name: 'fontsize') double? fontSize,
    String? borders,
    @JsonKey(name: 'outputformat') String? outputFormat,
    @JsonKey(name: 'preremarks') bool? preRemarks,
    bool? appendix,
    @JsonKey(name: 'pagebreak') bool? pageBreak,
    @JsonKey(name: 'prodbycheckit') bool? producedByCheckit,
    @JsonKey(name: 'versionnumber') String? versionNumber,
    @JsonKey(name: 'borderwidth') double? borderWidth,
    @JsonKey(name: 'funderlinehead') bool? fieldUnderlineHeader,
    @JsonKey(name: 'fitalichead') bool? fieldItalicHeader,
    @JsonKey(name: 'fboldhead') bool? fieldBoldHeader,
    @JsonKey(name: 'funderlinebody') bool? fieldUnderlineBody,
    @JsonKey(name: 'fitalicbody') bool? fieldItalicBody,
    @JsonKey(name: 'fboldbody') bool? fieldBoldBody,
    @JsonKey(name: 'cunderlinehead') bool? checklistUnderlineHeader,
    @JsonKey(name: 'citalichead') bool? checklistItalicHeader,
    @JsonKey(name: 'cboldhead') bool? checklistBoldHeader,
    @JsonKey(name: 'cunderlinebody') bool? checklistUnderlineBody,
    @JsonKey(name: 'citalicbody') bool? checklistItalicBody,
    @JsonKey(name: 'cboldbody') bool? checklistBoldBody,
    bool? breakAnswers,
    @JsonKey(name: 'titlemask') String? titleMask,
    String? companyId,
    @JsonKey(name: 'checklistcategoryId') String? checklistCategoryId,
    @JsonKey(name: 'appgroupId') String? appGroupId,
    String? companyName,
    @JsonKey(name: 'checklistcategoryName') String? checklistCategoryName,
    @JsonKey(name: 'appgroupName') String? appGroupName,
    @JsonKey(name: 'isobject') bool? isObject,
    @JsonKey(name: 'hideemptysection') bool? hideEmptySection,
    @JsonKey(name: 'islinked') bool? isLinked,
    @JsonKey(name: 'formfieldCreatedby') String? formFieldCreatedBy,
    @JsonKey(name: 'formfieldCreatedbyId') String? formFieldCreatedById,
    @JsonKey(name: 'formfieldCreated') String? formFieldCreated,
    @JsonKey(name: 'formfieldCreatedId') String? formFieldCreatedId,
    @JsonKey(name: 'formfieldName') String? formFieldName,
    @JsonKey(name: 'formfieldNameId') String? formFieldNameId,
    @JsonKey(name: 'hastemplate') bool? hasTemplate,
    @JsonKey(name: 'fforwardbody') String? forwardBody,
    @Default(<ChecklistSectionDto>[]) List<ChecklistSectionDto> sections,
  }) = _ChecklistDetailsDto;

  factory ChecklistDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$ChecklistDetailsDtoFromJson(json);
}

@freezed
abstract class ChecklistSectionDto with _$ChecklistSectionDto {
  const factory ChecklistSectionDto({
    String? id,
    String? name,
    @JsonKey(name: 'sortorder') int? sortOrder,
    String? dateCreated,
    String? lastUpdated,
    bool? deleted,
    @JsonKey(name: 'istemp') bool? isTemp,
    bool? approval,
    @JsonKey(name: 'approvestatus') int? approveStatus,
    @JsonKey(name: 'myapprove') bool? myApprove,
    @JsonKey(name: 'checklistfields')
    @Default(<ChecklistFieldDto>[])
    List<ChecklistFieldDto> fields,
  }) = _ChecklistSectionDto;

  factory ChecklistSectionDto.fromJson(Map<String, dynamic> json) =>
      _$ChecklistSectionDtoFromJson(json);
}

@freezed
abstract class ChecklistFieldDto with _$ChecklistFieldDto {
  const factory ChecklistFieldDto({
    String? id,
    String? name,
    @JsonKey(name: 'istextarea') bool? isTextArea,
    @JsonKey(name: 'extratext') bool? extraText,
    @JsonKey(name: 'ismultiple') bool? isMultiple,
    @JsonKey(name: 'isdatetime') bool? isDateTime,
    @JsonKey(name: 'issignature') bool? isSignature,
    @JsonKey(name: 'sortorder') int? sortOrder,
    @JsonKey(name: 'isrequired') bool? isRequired,
    String? dateCreated,
    String? lastUpdated,
    bool? deleted,
    @JsonKey(name: 'titlefield') bool? titleField,
    @JsonKey(name: 'istemp') bool? isTemp,
    String? companyId,
    @JsonKey(name: 'fieldtypId') String? fieldTypeId,
    @JsonKey(name: 'fieldtypname') String? fieldTypeName,
  }) = _ChecklistFieldDto;

  factory ChecklistFieldDto.fromJson(Map<String, dynamic> json) =>
      _$ChecklistFieldDtoFromJson(json);
}
