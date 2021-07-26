import '../converter.dart';
import '../util/extensions.dart';

// ignore_for_file: public_member_api_docs

final kelvin = TemperatureUnit.kelvin;
final celsius = TemperatureUnit.celsius;
final fahrenheit = TemperatureUnit.fahrenheit;

/// Converter for numerous [TemperatureUnit]s.
class TemperatureConverter extends CustomConverter implements TemperatureUnit {
  const TemperatureConverter._(String id, ConversionFn f, ConversionFn r)
      : super(id, f: f, r: r);

  @override
  String get category => 'temperature';
}

/// An enum for numerous [TemperatureConverter]s.
class TemperatureUnit {
  const TemperatureUnit._();

  // Base Unit: Kelvin

  // Common units
  static final kelvin = TemperatureConverter._(
    'kelvin',
    (k) => k.toDouble(),
    (k) => k.toDouble(),
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

  /// Returns the [TemperatureConverter] for this [id] or null
  /// if there is no [TemperatureConverter] associated with this id.
  static TemperatureConverter? parse(String? id) => units.find(id);
}
