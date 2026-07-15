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
    String? dateCreated,
    String? lastUpdated,
    String? description,
  }) = _ChecklistDetails;
}
