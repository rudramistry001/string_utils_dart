library string_utils;

/// Reverses the given string.
String reverse(String input) {
  return input.split('').reversed.join('');
}

/// Checks if the given string is a palindrome.
bool isPalindrome(String input) {
  String reversed = reverse(input);
  return input == reversed;
}

/// Converts the string to camel case.
String toCamelCase(String input) {
  return input.split(' ').map((word) {
    return word[0].toUpperCase() + word.substring(1).toLowerCase();
  }).join('');
}

/// Converts the string to title case.
String toTitleCase(String input) {
  return input.split(' ').map((word) {
    return word[0].toUpperCase() + word.substring(1).toLowerCase();
  }).join(' ');
}

/// Converts the string into a URL-friendly slug.
String slugify(String input) {
  return input
      .toLowerCase()
      .replaceAll(RegExp(r'[^a-z0-9]+'), '-')
      .replaceAll(RegExp(r'(^-|-$)'), '');
}

/// Truncates the string to a specified length and adds an ellipsis if needed.
String truncate(String input, int length) {
  if (input.length <= length) {
    return input;
  } else {
    return input.substring(0, length) + '...';
  }
}

/// Replaces all occurrences of a substring with a new value.
String replaceAllOccurrences(String input, String from, String to) {
  return input.replaceAll(from, to);
}

/// Checks if the string contains a substring with case sensitivity options.
bool contains(String input, String substring, {bool caseSensitive = true}) {
  if (caseSensitive) {
    return input.contains(substring);
  } else {
    return input.toLowerCase().contains(substring.toLowerCase());
  }
}
