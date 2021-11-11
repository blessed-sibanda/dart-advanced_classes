void main(List<String> arguments) {
  String original = 'abc';
  String secret = encode(original);
  print(secret);

  final other = 'abc';
  print(other.encoded);
  print(other.encoded.decoded);

  original = 'I like extensions!';
  secret = original.encoded;
  final revealed = secret.decoded;
  print(secret);
  print(revealed);
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
    return _code(1);
  }

  String get decoded {
    return _code(-1);
  }

  String _code(int step) {
    final output = StringBuffer();
    for (final codePoint in runes) {
      output.writeCharCode(codePoint + step);
    }
    return output.toString();
  }
}
