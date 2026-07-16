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
      checklistCategoryName: json['checklistcategoryName'] as String?,
      appGroupName: json['appgroupName'] as String?,
    );

Map<String, dynamic> _$ChecklistItemDtoToJson(_ChecklistItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'checklistcategoryName': instance.checklistCategoryName,
      'appgroupName': instance.appGroupName,
    };

_ChecklistDetailsDto _$ChecklistDetailsDtoFromJson(Map<String, dynamic> json) =>
    _ChecklistDetailsDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      lastUpdated: json['lastUpdated'] as String?,
      dateCreated: json['dateCreated'] as String?,
      standard: (json['standard'] as num?)?.toInt(),
      commonWrite: json['commonwrite'] as bool?,
      isTemp: json['istemp'] as bool?,
      deleted: json['deleted'] as bool?,
      editRight: json['editright'] as bool?,
      fontStyle: json['fontstyle'] as String?,
      fontSize: (json['fontsize'] as num?)?.toDouble(),
      borders: json['borders'] as String?,
      outputFormat: json['outputformat'] as String?,
      preRemarks: json['preremarks'] as bool?,
      appendix: json['appendix'] as bool?,
      pageBreak: json['pagebreak'] as bool?,
      producedByCheckit: json['prodbycheckit'] as bool?,
      versionNumber: json['versionnumber'] as String?,
      borderWidth: (json['borderwidth'] as num?)?.toDouble(),
      fieldUnderlineHeader: json['funderlinehead'] as bool?,
      fieldItalicHeader: json['fitalichead'] as bool?,
      fieldBoldHeader: json['fboldhead'] as bool?,
      fieldUnderlineBody: json['funderlinebody'] as bool?,
      fieldItalicBody: json['fitalicbody'] as bool?,
      fieldBoldBody: json['fboldbody'] as bool?,
      checklistUnderlineHeader: json['cunderlinehead'] as bool?,
      checklistItalicHeader: json['citalichead'] as bool?,
      checklistBoldHeader: json['cboldhead'] as bool?,
      checklistUnderlineBody: json['cunderlinebody'] as bool?,
      checklistItalicBody: json['citalicbody'] as bool?,
      checklistBoldBody: json['cboldbody'] as bool?,
      breakAnswers: json['breakAnswers'] as bool?,
      titleMask: json['titlemask'] as String?,
      companyId: json['companyId'] as String?,
      checklistCategoryId: json['checklistcategoryId'] as String?,
      appGroupId: json['appgroupId'] as String?,
      companyName: json['companyName'] as String?,
      checklistCategoryName: json['checklistcategoryName'] as String?,
      appGroupName: json['appgroupName'] as String?,
      isObject: json['isobject'] as bool?,
      hideEmptySection: json['hideemptysection'] as bool?,
      isLinked: json['islinked'] as bool?,
      formFieldCreatedBy: json['formfieldCreatedby'] as String?,
      formFieldCreatedById: json['formfieldCreatedbyId'] as String?,
      formFieldCreated: json['formfieldCreated'] as String?,
      formFieldCreatedId: json['formfieldCreatedId'] as String?,
      formFieldName: json['formfieldName'] as String?,
      formFieldNameId: json['formfieldNameId'] as String?,
      hasTemplate: json['hastemplate'] as bool?,
      forwardBody: json['fforwardbody'] as String?,
      sections:
          (json['sections'] as List<dynamic>?)
              ?.map(
                (e) => ChecklistSectionDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <ChecklistSectionDto>[],
    );

Map<String, dynamic> _$ChecklistDetailsDtoToJson(
  _ChecklistDetailsDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'lastUpdated': instance.lastUpdated,
  'dateCreated': instance.dateCreated,
  'standard': instance.standard,
  'commonwrite': instance.commonWrite,
  'istemp': instance.isTemp,
  'deleted': instance.deleted,
  'editright': instance.editRight,
  'fontstyle': instance.fontStyle,
  'fontsize': instance.fontSize,
  'borders': instance.borders,
  'outputformat': instance.outputFormat,
  'preremarks': instance.preRemarks,
  'appendix': instance.appendix,
  'pagebreak': instance.pageBreak,
  'prodbycheckit': instance.producedByCheckit,
  'versionnumber': instance.versionNumber,
  'borderwidth': instance.borderWidth,
  'funderlinehead': instance.fieldUnderlineHeader,
  'fitalichead': instance.fieldItalicHeader,
  'fboldhead': instance.fieldBoldHeader,
  'funderlinebody': instance.fieldUnderlineBody,
  'fitalicbody': instance.fieldItalicBody,
  'fboldbody': instance.fieldBoldBody,
  'cunderlinehead': instance.checklistUnderlineHeader,
  'citalichead': instance.checklistItalicHeader,
  'cboldhead': instance.checklistBoldHeader,
  'cunderlinebody': instance.checklistUnderlineBody,
  'citalicbody': instance.checklistItalicBody,
  'cboldbody': instance.checklistBoldBody,
  'breakAnswers': instance.breakAnswers,
  'titlemask': instance.titleMask,
  'companyId': instance.companyId,
  'checklistcategoryId': instance.checklistCategoryId,
  'appgroupId': instance.appGroupId,
  'companyName': instance.companyName,
  'checklistcategoryName': instance.checklistCategoryName,
  'appgroupName': instance.appGroupName,
  'isobject': instance.isObject,
  'hideemptysection': instance.hideEmptySection,
  'islinked': instance.isLinked,
  'formfieldCreatedby': instance.formFieldCreatedBy,
  'formfieldCreatedbyId': instance.formFieldCreatedById,
  'formfieldCreated': instance.formFieldCreated,
  'formfieldCreatedId': instance.formFieldCreatedId,
  'formfieldName': instance.formFieldName,
  'formfieldNameId': instance.formFieldNameId,
  'hastemplate': instance.hasTemplate,
  'fforwardbody': instance.forwardBody,
  'sections': instance.sections,
};

_ChecklistSectionDto _$ChecklistSectionDtoFromJson(Map<String, dynamic> json) =>
    _ChecklistSectionDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      sortOrder: (json['sortorder'] as num?)?.toInt(),
      dateCreated: json['dateCreated'] as String?,
      lastUpdated: json['lastUpdated'] as String?,
      deleted: json['deleted'] as bool?,
      isTemp: json['istemp'] as bool?,
      approval: json['approval'] as bool?,
      approveStatus: (json['approvestatus'] as num?)?.toInt(),
      myApprove: json['myapprove'] as bool?,
      fields:
          (json['checklistfields'] as List<dynamic>?)
              ?.map(
                (e) => ChecklistFieldDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <ChecklistFieldDto>[],
    );

Map<String, dynamic> _$ChecklistSectionDtoToJson(
  _ChecklistSectionDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'sortorder': instance.sortOrder,
  'dateCreated': instance.dateCreated,
  'lastUpdated': instance.lastUpdated,
  'deleted': instance.deleted,
  'istemp': instance.isTemp,
  'approval': instance.approval,
  'approvestatus': instance.approveStatus,
  'myapprove': instance.myApprove,
  'checklistfields': instance.fields,
};

_ChecklistFieldDto _$ChecklistFieldDtoFromJson(Map<String, dynamic> json) =>
    _ChecklistFieldDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      isTextArea: json['istextarea'] as bool?,
      extraText: json['extratext'] as bool?,
      isMultiple: json['ismultiple'] as bool?,
      isDateTime: json['isdatetime'] as bool?,
      isSignature: json['issignature'] as bool?,
      sortOrder: (json['sortorder'] as num?)?.toInt(),
      isRequired: json['isrequired'] as bool?,
      dateCreated: json['dateCreated'] as String?,
      lastUpdated: json['lastUpdated'] as String?,
      deleted: json['deleted'] as bool?,
      titleField: json['titlefield'] as bool?,
      isTemp: json['istemp'] as bool?,
      companyId: json['companyId'] as String?,
      fieldTypeId: json['fieldtypId'] as String?,
      fieldTypeName: json['fieldtypname'] as String?,
    );

Map<String, dynamic> _$ChecklistFieldDtoToJson(_ChecklistFieldDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'istextarea': instance.isTextArea,
      'extratext': instance.extraText,
      'ismultiple': instance.isMultiple,
      'isdatetime': instance.isDateTime,
      'issignature': instance.isSignature,
      'sortorder': instance.sortOrder,
      'isrequired': instance.isRequired,
      'dateCreated': instance.dateCreated,
      'lastUpdated': instance.lastUpdated,
      'deleted': instance.deleted,
      'titlefield': instance.titleField,
      'istemp': instance.isTemp,
      'companyId': instance.companyId,
      'fieldtypId': instance.fieldTypeId,
      'fieldtypname': instance.fieldTypeName,
    };
