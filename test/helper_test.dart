import 'package:myportion_app/services/helper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Validate Name', () {
    test('Good Name', () {
      String returnVal = validateName("John Luke");
      expect(returnVal, null);
    });

    test('Bad Name', () {
      String returnVal = validateName("1John Luke");
      expect(returnVal, "Name must be a-z and A-Z");
    });

    test('No Name', () {
      String returnVal = validateName("");
      expect(returnVal, "Name is required");
    });
  });

  group('Validate Mobile', () {});

  group('Validate Password', () {});
}
