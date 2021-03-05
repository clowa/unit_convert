import 'dart:math';

import 'package:test/test.dart';

import 'package:unit_convert/unit_convert.dart';

export 'package:test/test.dart';
export 'package:unit_convert/unit_convert.dart';

void approx(Converter<num> from, Converter<num> to, num value, num expected) {
  expect(roundToPrecision(convert(from, to, value), 5), equals(expected));
}

double roundToPrecision(num value, int precision) {
  final fac = pow(10, precision);
  return (value * fac).round() / fac;
}

void main() {
  test(
    'Should return the unit for the give id',
    () => expect(LengthUnit.parse('centimeter'), equals(centimeter)),
  );

  test(
    'Should return null when no id matches the id provided',
    () => expect(LengthUnit.parse('sdjhdflksdjf'), isNull),
  );
}
