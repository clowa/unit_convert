import '../converter.dart';

class EnergyConverter extends RatioConverter {
  const EnergyConverter._(String id, String symbol, double ratio)
      : super(symbol, s: symbol, r: ratio);

  @override
  String get category => 'energy';
}

class EnergyUnit {
  const EnergyUnit._();

  static const common = [];

  static const units = [];
}
