import 'converter.dart';

abstract class Unit {
  static Converter parse(String id, {Converter orElse}) =>
      Units.values.firstWhere((unit) => unit.id == id, orElse: () => orElse);

  static Converter tryParse(String id) => parse(id, orElse: null);
}

class Units {
  const Units._();

  static final values = [
    ...AngleUnit.units,
    ...AreaUnit.units,
    ...EnergyUnit.units,
    ...ForceUnit.units,
    ...FuelConsumptionUnit.units,
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

  static final common = [
    ...AngleUnit.common,
    ...AreaUnit.common,
    ...EnergyUnit.common,
    ...ForceUnit.common,
    ...FuelConsumptionUnit.common,
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
