import 'test.dart';

void main() {
  test('ounce/lb to gram/kg',
      () => approx(WeightRatioUnit.ouncePerLb, gramPerKg, 10, 624.99359));
  test('gram/kg to ounce/lb',
      () => approx(WeightRatioUnit.gramPerKg, ouncePerLb, 624.99359, 10.0));
}
