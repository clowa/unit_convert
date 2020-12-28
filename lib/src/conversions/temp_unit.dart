import '../converter.dart';

final kelvin = TemperatureUnit.kelvin;
final celsius = TemperatureUnit.celsius;
final fahrenheit = TemperatureUnit.fahrenheit;

class TemperatureConverter extends NumericalConverter {
  TemperatureConverter._(String id, String symbol, ConversionFn f, ConversionFn b)
      : super(id, s: symbol, f: f, b: b);

  String get name => Converter.i18n['temperature'][id] ?? id;
}

class TemperatureUnit {
  const TemperatureUnit._();

  // Base Unit: Kelvin

  // Common units
  static final kelvin = TemperatureConverter._(
    'kelvin',
    'K',
    (k) => k,
    (k) => k,
  );
  static final celsius = TemperatureConverter._(
    'celsius',
    '°C',
    (k) => k - 273.15,
    (c) => c + 273.15,
  );
  static final fahrenheit = TemperatureConverter._(
    'fahrenheit',
    '°F',
    (k) => (k - 273.15) * (9 / 5) + 32,
    (f) => (f - 32.0) * (5 / 9) + 273.15,
  );

  // Misc
  static final rankine = TemperatureConverter._(
    'rankine',
    '°R',
    (k) => k * (9 / 5),
    (r) => r * (5 / 9),
  );
  static final reaumur = TemperatureConverter._(
    'reaumur',
    '°r',
    (k) => (k - 273.15) * 0.8,
    (r) => (r / 0.8) + 273.15,
  );
  static final triplePointOfWater = TemperatureConverter._(
    'triple_point_of_water',
    null,
    (k) => k / 273.16,
    (t) => t * 273.16,
  );

  static final common = [celsius, fahrenheit, kelvin];
  static final unit = [celsius, fahrenheit, kelvin, rankine, reaumur, triplePointOfWater];
}
