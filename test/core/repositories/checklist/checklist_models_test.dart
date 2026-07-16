import 'package:flutter_playground/core/repositories/checklist/checklist_models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('maps backend checklist detail keys to idiomatic DTO names', () {
    final details = ChecklistDetailsDto.fromJson({
      'id': '758c9804-1d4c-47f7-81e9-ceaa2c59955e',
      'name': 'Checklist One',
      'lastUpdated': 'May 29, 2026, 12:42:20 PM',
      'dateCreated': 'May 29, 2026, 12:42:20 PM',
      'commonwrite': false,
      'istemp': false,
      'editright': true,
      'fontstyle': 'open-sans',
      'fontsize': 10.0,
      'outputformat': 'all',
      'preremarks': false,
      'pagebreak': true,
      'prodbycheckit': true,
      'versionnumber': '1',
      'borderwidth': 1.0,
      'titlemask':
          '@@name@@_@@year@@@@month@@@@day@@@@hour@@@@minute@@@@second@@',
      'checklistcategoryId': 'category-id',
      'appgroupId': 'group-id',
      'companyName': 'BasalBit_Export from Test',
      'checklistcategoryName': 'Category One',
      'appgroupName': 'JustAGroup',
      'isobject': false,
      'hideemptysection': false,
      'islinked': false,
      'formfieldCreatedby': '',
      'hastemplate': false,
      'sections': [
        {
          'id': 'section-id',
          'name': 'Section One',
          'sortorder': 0,
          'istemp': false,
          'approvestatus': -1,
          'myapprove': false,
          'checklistfields': [
            {
              'id': 'field-id',
              'name': 'Textfeld One',
              'istextarea': false,
              'extratext': false,
              'ismultiple': false,
              'isdatetime': false,
              'issignature': false,
              'sortorder': 0,
              'isrequired': false,
              'titlefield': false,
              'istemp': false,
              'fieldtypId': 'id-text',
              'fieldtypname': 'id-text',
            },
          ],
        },
      ],
    });

    expect(details.checklistCategoryName, 'Category One');
    expect(details.appGroupName, 'JustAGroup');
    expect(details.editRight, isTrue);
    expect(details.versionNumber, '1');
    expect(details.hideEmptySection, isFalse);

    final section = details.sections.single;
    expect(section.sortOrder, 0);
    expect(section.approveStatus, -1);

    final field = section.fields.single;
    expect(field.isTextArea, isFalse);
    expect(field.isRequired, isFalse);
    expect(field.fieldTypeId, 'id-text');
    expect(field.fieldTypeName, 'id-text');
  });
}
