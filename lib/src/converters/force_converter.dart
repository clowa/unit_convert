import '../converter.dart';

class ForceConverter extends RatioConverter {
  const ForceConverter._(String id, String symbol, double ratio)
      : super(symbol, s: symbol, r: ratio);

  @override
  String get category => 'force';
}

class ForceUnit {
  const ForceUnit._();

  static const common = [];

  static const units = [];
}
