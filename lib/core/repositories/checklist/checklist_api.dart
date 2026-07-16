import 'package:dio/dio.dart';
import 'package:flutter_playground/core/repositories/checklist/checklist_models.dart';
import 'package:retrofit/retrofit.dart';

part 'checklist_api.g.dart';

@RestApi()
abstract class ChecklistApi {
  factory ChecklistApi(Dio dio) = _ChecklistApi;

  @GET('/checklist/indexShort')
  Future<ChecklistPageDto> getChecklists({
    @Query('max') required int limit,
    @Query('offset') required int offset,
  });

  @GET('/checklist/showdetail/{id}')
  Future<Object?> getChecklistDetails(@Path('id') String id);
}
