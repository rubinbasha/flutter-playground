import 'package:dio/dio.dart';
import 'package:flutter_playground/features/checklists/data/checklist_models.dart';
import 'package:retrofit/retrofit.dart';

part 'checklist_api.g.dart';

@RestApi()
abstract class ChecklistApi {
  factory ChecklistApi(Dio dio) = _ChecklistApi;

  @GET('/apicheckittest/checklist/indexShort')
  Future<ChecklistPageDto> getChecklists({
    @Query('max') required int limit,
    @Query('offset') required int offset,
  });

  @GET('/apicheckittest/checklist/showdetail/{id}')
  Future<ChecklistDetailsDto> getChecklistDetails(@Path('id') String id);
}
