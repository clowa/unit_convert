import 'test.dart';

void main() {
  test('Miles Per Hour to Kilometers Per Hour',
      () => approx(milePerHour, kilometerPerHour, 100, 160.9344));
  test('Foot per Hour to Yard per Hour',
      () => approx(footPerHour, yardPerSecond, 10, 0.00093));
  test('Beaufort to ms', () => approx(beaufort, meterPerSecond, 5, 9.34676));
  test('Beaufort to kmh', () => approx(beaufort, kilometerPerHour, 11, 109.79885));
}
