import '../converter.dart';

class SpeedConverter extends RatioConverter {
  const SpeedConverter._(String id, String symbol, double ratio)
      : super(symbol, s: symbol, r: ratio);

  @override
  String get category => 'speed';
}

class SpeedUnit {
  const SpeedUnit._();

  static const common = [];

  static const units = [];
}
