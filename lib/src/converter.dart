import 'package:meta/meta.dart';

import 'converters/converters.dart';
import 'i18n/i18n.dart';

export 'converters/converters.dart';

T convert<T>(Converter<T> from, Converter<T> to, T value) => from(to, value);

typedef ConversionFn = double Function(num value);

abstract class Converter<T> {
  final String id;
  final String symbol;
  const Converter(this.id, {this.symbol});

  static String _locale;
  static String get locale => _locale;
  static set locale(String value) {
    if (translations.containsKey(value)) {
      i18n = translations[value];
    } else if (value.contains('_')) {
      locale = value.split('_').first;
    }
  }

  static Map i18n = en;

  String get name => i18n[category][id] ?? id;
  String get category;

  T call(Converter<T> other, T value) => to(other, value);
  T to(Converter<T> other, T value);

  C typeCheckConverter<C extends Converter<T>>(Converter<T> other) {
    if (runtimeType != other.runtimeType) {
      throw ArgumentError.value(
        other,
        'Cannot convert between $runtimeType and ${other.runtimeType}',
      );
    }

    return other as C;
  }

  @override
  String toString() => '$runtimeType($id)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Converter<T> && o.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}

abstract class RatioConverter extends Converter<double> {
  final double ratio;
  const RatioConverter(
    String id, {
    @required double r,
    String s,
  })  : ratio = r,
        super(
          id,
          symbol: s,
        );

  double to(Converter<double> other, double value) {
    final o = typeCheckConverter<RatioConverter>(other);
    return value * (ratio / o.ratio);
  }
}

abstract class CustomConverter extends Converter<double> {
  final ConversionFn forward;
  final ConversionFn reverse;
  CustomConverter(
    String id, {
    String s,
    @required ConversionFn f,
    @required ConversionFn r,
  })  : forward = f,
        reverse = r,
        super(id, symbol: s);

  double to(Converter<double> other, double value) {
    final o = typeCheckConverter<CustomConverter>(other);
    return o.forward(reverse(value));
  }
}

abstract class StringConverter extends Converter<String> {
  const StringConverter(String id, {String symbol}) : super(id, symbol: symbol);
}

