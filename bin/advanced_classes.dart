void main(List<String> arguments) {
  final original = 'abc';
  final secret = encode(original);
  print(secret);

  final other = 'abc';
  print(other.encoded);
  print(other.encoded.decoded);
}

String encode(String input) {
  final output = StringBuffer();
  for (final codePoint in input.runes) {
    output.writeCharCode(codePoint + 1);
  }
  return output.toString();
}

extension on String {
  String get encoded {
    final output = StringBuffer();
    for (final codePoint in runes) {
      output.writeCharCode(codePoint + 1);
    }
    return output.toString();
  }

  String get decoded {
    final output = StringBuffer();
    for (final codePoint in runes) {
      output.writeCharCode(codePoint - 1);
    }
    return output.toString();
  }
}
