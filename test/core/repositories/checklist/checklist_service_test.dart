import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_playground/core/repositories/checklist/checklist_models.dart';
import 'package:flutter_playground/core/repositories/checklist/checklist_service.dart';
import 'package:flutter_playground/core/result/api_result.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

void main() {
  late Dio dio;
  late DioAdapter adapter;
  late DioChecklistService service;

  setUp(() {
    dio = Dio(BaseOptions(baseUrl: 'https://example.test'));
    adapter = DioAdapter(dio: dio);
    service = DioChecklistService(dio);
  });

  test('parses checklist details returned as a JSON object', () async {
    adapter.onGet(
      '/checklist/showdetail/id',
      (server) => server.reply(200, _detailsJson),
    );

    final result = await service.getChecklistDetails('id');

    expect(
      result,
      isA<ApiSuccess<ChecklistDetailsDto>>().having(
        (success) => success.data.name,
        'name',
        'Checklist One',
      ),
    );
  });

  test('parses checklist details returned as a JSON string', () async {
    adapter.onGet(
      '/checklist/showdetail/id',
      (server) => server.reply(200, jsonEncode(_detailsJson)),
    );

    final result = await service.getChecklistDetails('id');

    expect(
      result,
      isA<ApiSuccess<ChecklistDetailsDto>>()
          .having(
            (success) => success.data.checklistCategoryName,
            'category',
            'Category One',
          )
          .having(
            (success) => success.data.sections.single.fields.single.name,
            'field',
            'Textfield One',
          ),
    );
  });

  test('returns the parsing error for an invalid response body', () async {
    adapter.onGet(
      '/checklist/showdetail/id',
      (server) => server.reply(200, 'not-json'),
    );

    final result = await service.getChecklistDetails('id');

    expect(
      result,
      isA<ApiFailure<ChecklistDetailsDto>>()
          .having(
            (failure) => failure.type,
            'type',
            FailureType.invalidResponse,
          )
          .having(
            (failure) => failure.originalError,
            'originalError',
            isA<FormatException>(),
          ),
    );
  });
}

const _detailsJson = <String, dynamic>{
  'id': 'id',
  'name': 'Checklist One',
  'checklistcategoryName': 'Category One',
  'appgroupName': 'Group One',
  'sections': [
    {
      'id': 'section',
      'name': 'Section One',
      'checklistfields': [
        {'id': 'field', 'name': 'Textfield One', 'fieldtypId': 'id-text'},
      ],
    },
  ],
};
