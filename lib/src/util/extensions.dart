import 'dart:math' as math;

import 'package:unit_convert/src/converter.dart';

extension NumExtensions on num {
  double root(num exp) => (math.pow(this, 1 / exp) * 1E+9).round() / 1E+9;
  double sqrt() => math.sqrt(this);
  double cbrt() => root(3);

  double pow(int exp) => math.pow(this, exp).toDouble();
  double squared() => pow(2);
  double cubed() => pow(3);
}

extension ListExtension<T> on List<T> {
  T? findOrNull(bool Function(T item) predicate) {
    try {
      return firstWhere(predicate);
    } on StateError {
      return null;
    }
  }
}

extension ListConverterExtensions<T extends Converter> on List<T> {
  T? find(String? id) => id == null ? null : findOrNull((unit) => unit.id == id);
}
