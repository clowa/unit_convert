import 'test.dart';

void main() {
  test('Degrees to Radians', () => approx(degree, radian, 100.0, 1.74533));
  test('Degrees to Minutes', () => approx(degree, AngleUnit.minute, 100.0, 6000.0));
  test('Gon to Circle', () => approx(AngleUnit.gon, AngleUnit.circle, 100.0, 0.25));
  test('Sextant to Degree', () => approx(AngleUnit.sextant, degree, 1.0, 60.0));
}
