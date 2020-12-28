import 'test.dart';

void main() {
  test('Decigramm to Kilogramm', () => approx(decigram, kilogram, 10000, 1));
  test('Pennyweight to Kilogramm',
      () => approx(WeightUnit.pennyweight, kilogram, 100, 0.15552));
  test('Ton to Kilogramm', () => approx(ton, kilogram, 1, 1000));
  test('Ounce to Kilogramm', () => approx(ounce, kilogram, 100, 2.83495));
  test('Suns mass to Earths mass',
      () => approx(WeightUnit.earthMass, WeightUnit.sunMass, 100, 0.0003));
}
