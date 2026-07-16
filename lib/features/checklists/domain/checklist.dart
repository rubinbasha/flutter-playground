import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist.freezed.dart';

@freezed
abstract class ChecklistPage with _$ChecklistPage {
  const factory ChecklistPage({
    required List<ChecklistSummary> items,
    required int totalCount,
  }) = _ChecklistPage;
}

@freezed
abstract class ChecklistSummary with _$ChecklistSummary {
  const factory ChecklistSummary({
    required String id,
    required String name,
    String? categoryName,
    String? appGroupName,
  }) = _ChecklistSummary;
}

@freezed
abstract class ChecklistDetails with _$ChecklistDetails {
  const factory ChecklistDetails({
    required String id,
    required String name,
    String? categoryName,
    String? appGroupName,
    String? companyName,
    String? dateCreated,
    String? lastUpdated,
    String? versionNumber,
    bool? editRight,
    String? description,
    @Default(<ChecklistSection>[]) List<ChecklistSection> sections,
  }) = _ChecklistDetails;
}

@freezed
abstract class ChecklistSection with _$ChecklistSection {
  const factory ChecklistSection({
    required String id,
    required String name,
    int? sortOrder,
    @Default(<ChecklistField>[]) List<ChecklistField> fields,
  }) = _ChecklistSection;
}

@freezed
abstract class ChecklistField with _$ChecklistField {
  const factory ChecklistField({
    required String id,
    required String name,
    String? fieldTypeId,
    String? fieldTypeName,
    int? sortOrder,
    @Default(false) bool isRequired,
    @Default(false) bool isTextArea,
    @Default(false) bool isMultiple,
    @Default(false) bool isDateTime,
    @Default(false) bool isSignature,
  }) = _ChecklistField;
}
