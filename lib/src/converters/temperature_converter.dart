import '../converter.dart';

// ignore_for_file: public_member_api_docs

final kelvin = TemperatureUnit.kelvin;
final celsius = TemperatureUnit.celsius;
final fahrenheit = TemperatureUnit.fahrenheit;

class TemperatureConverter extends CustomConverter {
  TemperatureConverter._(String id, ConversionFn f, ConversionFn r)
      : super(id, f: f, r: r);

  @override
  String get category => 'temperature';
}

class TemperatureUnit {
  const TemperatureUnit._();

  // Base Unit: Kelvin

  // Common units
  static final kelvin = TemperatureConverter._(
    'kelvin',
    (k) => k,
    (k) => k,
  );
  static final celsius = TemperatureConverter._(
    'celsius',
    (k) => k - 273.15,
    (c) => c + 273.15,
  );
  static final fahrenheit = TemperatureConverter._(
    'fahrenheit',
    (k) => (k - 273.15) * (9 / 5) + 32,
    (f) => (f - 32.0) * (5 / 9) + 273.15,
  );

  // Misc
  static final rankine = TemperatureConverter._(
    'rankine',
    (k) => k * (9 / 5),
    (r) => r * (5 / 9),
  );
  static final reaumur = TemperatureConverter._(
    'reaumur',
    (k) => (k - 273.15) * 0.8,
    (r) => (r / 0.8) + 273.15,
  );
  static final triplePointOfWater = TemperatureConverter._(
    'triple_point_of_water',
    (k) => k / 273.16,
    (t) => t * 273.16,
  );

  static final common = [celsius, fahrenheit, kelvin];
  static final units = [
    celsius,
    fahrenheit,
    kelvin,
    rankine,
    reaumur,
    triplePointOfWater
  ];
}
