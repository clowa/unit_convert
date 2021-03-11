import 'test.dart';

void main() {
  test('Liter to Dram', () => approx(liter, VolumeUnit.dram, 1.0, 270.51154));
  test('Exaliter to Cubic Kilometer', () => approx(exaliter, cubicKilometer, 1.0, 1E+6));
  test('Drops to Liter', () => approx(VolumeUnit.drop, liter, 100.0, 0.005));
  test('Pint UK to Quart US',
      () => approx(VolumeUnit.pintUK, VolumeUnit.quartUS, 1.0, 0.60048));
  test('Ton register to Drops',
      () => approx(VolumeUnit.tonRegister, VolumeUnit.drop, 1.0, 56633693.184));
}
