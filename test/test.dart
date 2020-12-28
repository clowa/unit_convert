import 'dart:math';

import 'package:test/test.dart';

import 'package:unit_convert/unit_convert.dart';

export 'package:test/test.dart';
export 'package:unit_convert/unit_convert.dart';

void approx(
    NumericalConverter from, NumericalConverter to, double value, double expected) {
  expect(roundToPrecision(convert(from, to, value), 5), equals(expected));
}

double roundToPrecision(num value, int precision) {
  final fac = pow(10, precision);
  return (value * fac).round() / fac;
}
