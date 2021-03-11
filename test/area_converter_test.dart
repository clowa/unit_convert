import 'test.dart';

void main() {
  test('Acre to Hectare', () => approx(acre, hectare, 1, 0.40469));
  test('Square Millimeter to Square Centimeter',
      () => approx(squareMillimeter, squareCentimeter, 1, 0.01));
  test('Square Hectometer to Square Kilometer',
      () => approx(AreaUnit.squareHectometer, squareKilometer, 10, 0.1));
}
