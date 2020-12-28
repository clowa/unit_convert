import 'test.dart';

void main() {
  test('Millibar to Hectopascal', () => approx(millibar, hectopascal, 100, 100));
  test('Bar to Hectopascal', () => approx(bar, hectopascal, 100, 1E+5));
  test('Pascal to Inch Mercury (60°F)',
      () => approx(pascal, PressureUnit.inchMercury60Deg, 100, 0.02961));
  test('Exapascal to Terapascal',
      () => approx(PressureUnit.exapascal, PressureUnit.terapascal, 1, 1E+6));
  test('Psi to Dekapascal', () => approx(psi, dekapascal, 1, 689.47573));
  test('Standard Atmosphere to Hectopascal',
      () => approx(standardAtmosphere, hectopascal, 1, 1013.25));
}
