import '../converter.dart';

class FuelConsumptionConverter extends RatioConverter {
  const FuelConsumptionConverter._(String id, String symbol, double ratio)
      : super(symbol, s: symbol, r: ratio);

  @override
  String get category => 'fuel_consumption';
}

class FuelConsumptionUnit {
  const FuelConsumptionUnit._();

  static const common = [];

  static const units = [];
}
