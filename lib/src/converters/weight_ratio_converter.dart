import 'package:unit_convert/unit_convert.dart';

final ouncePerLb = WeightRatioUnit.ouncePerLb;
final gramPerKg = WeightRatioUnit.gramPerKg;

/// Converter for numerous [WeightRatioUnit]s.
class WeightRatioConverter extends CustomConverter implements WeightRatioUnit {
  const WeightRatioConverter._(String id, ConversionFn f, ConversionFn r)
      : super(id, f: f, r: r);

  @override
  String get category => 'weight_ratio';
}

/// Enum for numerous [WeightRatioConverter]s.
class WeightRatioUnit {
  const WeightRatioUnit._();

  // Base Unit: gramPerKg

  // Common units
  static final gramPerKg = WeightRatioConverter._(
    'gram_kg',
    (gPerKg) => gPerKg,
    (pPerKg) => pPerKg,
  );
  static final ouncePerLb = WeightRatioConverter._('ounce_lb', (gramPerKg) {
    // g/kg -> oz/lb
    final ounce = convert(WeightUnit.gram, WeightUnit.ounce, gramPerKg);
    const oneKgToLb = 2.2046;
    final ouncePerLb = ounce / oneKgToLb;
    return ouncePerLb;
  }, (ouncePerLb) {
    // oz/lb -> g/kg
    final gram = convert(WeightUnit.ounce, WeightUnit.gram, ouncePerLb);
    const oneLbToKg = 1 / 2.2046;
    final gramPerKilogram = gram / oneLbToKg;
    return gramPerKilogram;
  });

  static final common = [
    ouncePerLb,
    gramPerKg,
  ];

  static final units = [
    ouncePerLb,
    gramPerKg,
  ];

  /// Returns the [WeightRatioConverter] for this [id] or throws a StateError
  /// if there is no [WeightRatioConverter] associated with this id.
  static WeightRatioConverter parse(String id, {WeightRatioConverter orElse}) =>
      units.firstWhere((unit) => unit.id == id, orElse: () => orElse);

  /// Returns the [WeightRatioConverter] for this [id] or returns null
  /// if there is no [WeightRatioConverter] associated with this id.
  static WeightRatioConverter tryParse(String id) => parse(id, orElse: null);
}
