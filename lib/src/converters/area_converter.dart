import '../converter.dart';

class AreaConverter extends RatioConverter {
  const AreaConverter._(String id, String symbol, double ratio)
      : super(symbol, s: symbol, r: ratio);

  @override
  String get category => 'area';
}

class AreaUnit {
  const AreaUnit._();

  static const common = [];

  static const units = [];
}
