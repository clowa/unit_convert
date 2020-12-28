import 'test.dart';

void match(StringConverter from, StringConverter to, String value, String expected) {
  expect(convert(from, to, value), equals(expected));
}

void main() {
  test('decimal to octal', () => match(decimal, octal, '100', '144'));
  test('binary to hexadecimal', () => match(binary, hexadecimal, '111010', '3A'));
  test('binary to decimal', () => match(binary, decimal, '111010', '58'));
  test('base3 to base17',
      () => match(NumberBase.base3, NumberBase.base17, '1110212', '3C5'));
  test('base15 to base30',
      () => match(NumberBase.base15, NumberBase.base30, '11172E2AD', '3N5O85D'));
}
