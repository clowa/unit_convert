import 'converter.dart';

/// Provides utillities to parse a unit id to its [Converter].
abstract class Unit {
  /// Returns the [Converter] for this [id] or null
  /// if there is no [Converter] associated with this id.
  static Converter? parse(String? id, {Converter? orElse}) {
    try {
      return Units.values.firstWhere((unit) => unit.id == id);
    } on StateError {
      if (orElse != null) {
        return orElse;
      } else {
        rethrow;
      }
    }
  }
}

/// Provides utillities to work with [Converter]s.
class Units {
  const Units._();

  /// All [Converters].
  static final List<Converter> values = [
    ...AngleUnit.units,
    ...AreaUnit.units,
    ...EnergyUnit.units,
    ...ForceUnit.units,
    ...LengthUnit.units,
    ...NumberBase.units,
    ...PowerUnit.units,
    ...PressureUnit.units,
    ...SpeedUnit.units,
    ...StorageUnit.units,
    ...TemperatureUnit.units,
    ...TimeUnit.units,
    ...VolumeUnit.units,
    ...WeightUnit.units,
  ];

  /// All common [Converters].
  static final List<Converter> common = [
    ...AngleUnit.common,
    ...AreaUnit.common,
    ...EnergyUnit.common,
    ...ForceUnit.common,
    ...LengthUnit.common,
    ...NumberBase.common,
    ...PowerUnit.common,
    ...PressureUnit.common,
    ...SpeedUnit.common,
    ...StorageUnit.common,
    ...TemperatureUnit.common,
    ...TimeUnit.common,
    ...VolumeUnit.common,
    ...WeightUnit.common,
  ];
}
