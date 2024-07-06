import 'package:string_utils/string_utils.dart' as string_utils;
import 'package:test/test.dart';

void main() {
  group('String Utilities', () {
    test('reverse', () {
      expect(string_utils.reverse('hello'), 'olleh');
    });

    test('isPalindrome', () {
      expect(string_utils.isPalindrome('racecar'), isTrue);
      expect(string_utils.isPalindrome('hello'), isFalse);
    });

    test('toCamelCase', () {
      expect(string_utils.toCamelCase('hello world'), 'HelloWorld');
    });

    test('toTitleCase', () {
      expect(string_utils.toTitleCase('hello world'), 'Hello World');
    });

    test('slugify', () {
      expect(string_utils.slugify('Hello World!'), 'hello-world');
    });

    test('truncate', () {
      expect(
          string_utils.truncate('This is a long sentence', 10), 'This is a...');
      expect(string_utils.truncate('Short', 10), 'Short');
    });

    test('replaceAllOccurrences', () {
      expect(string_utils.replaceAllOccurrences('hello world', 'world', 'dart'),
          'hello dart');
    });

    test('contains', () {
      expect(
          string_utils.contains('hello world', 'WORLD', caseSensitive: false),
          isTrue);
      expect(string_utils.contains('hello world', 'WORLD', caseSensitive: true),
          isFalse);
    });
  });
}
