import 'package:meta/meta.dart';

import 'i18n/i18n.dart';

export 'converters/converters.dart';

/// Sytactic sugar for
///
/// ~~~dart
/// from(celsius).to(fahrenheit, 100);
/// ~~~
Converter<T> from<T>(Converter<T> converter) => converter;

/// Converts the given [value] from the unit given by [from]
/// to the target unit given by [to].
///
/// Throws `ArgumentError` if its not possible to
/// convert between the two units.
double convert(Converter<num> from, Converter<num> to, num value) =>
    from(to, value.toDouble()).toDouble();

/// A custom conversion function.
typedef ConversionFn = double Function(num value);

/// The base class for all converters.
abstract class Converter<T> {
  /// The id of this unit.
  final String id;

  /// Creates a new converter.
  const Converter(this.id);

  /// The current locale for [name] and [symbol].
  ///
  /// Current supported localese are:
  ///
  /// - English (en)
  /// - German (de)
  static String get locale => i18n['locale'];

  /// Sets the current locale for [name] and [symbol].
  ///
  /// Current supported localese are:
  ///
  /// - English (en)
  /// - German (de)
  static set locale(String value) {
    if (translations.containsKey(value)) {
      i18n = translations[value] as Map<String, dynamic>;
    } else if (value.contains('_')) {
      locale = value.split('_').first;
    }
  }

  /// The translations for [name] and [symbol].
  ///
  /// Current supported languages are:
  ///
  /// - English
  /// - German
  @visibleForTesting
  static Map<String, dynamic> i18n = en;

  /// The id of the category of this unit.
  String get category;

  /// The id of the category of this unit.
  String get categoryName => i18n[category][category];

  /// The localized name of this unit.
  String get name => _parts.first;

  /// The localized symbol of this unit.
  String get symbol => _parts.last;

  /// Whether this unit has a symbol.
  bool get hasSymbol => name != symbol;

  List<String> get _parts {
    final parts = i18n[category][id];

    if (parts is List) {
      return parts as List<String>;
    } else {
      return [parts];
    }
  }

  /// {@macro convert}
  T call(Converter<T> other, T value) => to(other, value);

  /// {@template convert}
  /// Convertes the given [value] from this
  /// unit to the [other] unit.
  ///
  /// Throws `ArgumentError` if its not possible to
  /// convert between the two units.
  /// {@endtemplate}
  T to(Converter<T> other, T value);

  /// Throws an ArgumentError if the Types of the two Converters
  /// don't match and returns the casted converter otherwise.
  @protected
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

    return o is Converter && o.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}

/// A numerical converter that can be expressed as a
/// ratio to the base unit.
abstract class RatioConverter extends Converter<double> {
  /// The conversion ratio to the base unit.
  final double ratio;

  /// A custom conversion function to convert from the base unit.
  final ConversionFn? forward;

  /// A custom conversion function to convert to the base unit.
  final ConversionFn? reverse;

  /// Creates a numerical converter that can be expressed as a
  /// ratio to the base unit.
  const RatioConverter(
    String id, {
    required double r,
    ConversionFn? f,
    ConversionFn? b,
  })  : ratio = r,
        forward = f,
        reverse = b,
        super(id);

  @override
  double to(Converter<double> other, double value) {
    final o = typeCheckConverter<RatioConverter>(other);
    final base = reverse?.call(value) ?? (value * ratio);
    return o.forward?.call(base) ?? (base / o.ratio);
  }
}

/// A custom converter with function for both
/// to base and from base conversions.
abstract class CustomConverter extends Converter<double> {
  /// Converts the value from the base unit
  /// to the unit of this.
  final ConversionFn forward;

  /// Converts the value to the base unit.
  final ConversionFn reverse;

  /// Creates a custom converter with function for both
  /// to base and from base conversions.
  const CustomConverter(
    String id, {
    required ConversionFn f,
    required ConversionFn r,
  })  : forward = f,
        reverse = r,
        super(id);

  @override
  double to(Converter<double> other, double value) {
    final o = typeCheckConverter<CustomConverter>(other);
    return o.forward(reverse(value));
  }
}

/// A converter that converts Strings.
abstract class StringConverter extends Converter<String> {
  /// Creates a converter that converts Strings.
  const StringConverter(String id) : super(id);
}
