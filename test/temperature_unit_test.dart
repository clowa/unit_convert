import 'test.dart';

void main() {
  test('Kelvin to Celsius', () => approx(kelvin, celsius, 100.0, -173.15));
  test('Fahrenheit to Celsius', () => approx(fahrenheit, celsius, 34.0, 1.11111));
  test('Fahrenheit to Rankine',
      () => approx(fahrenheit, TemperatureUnit.rankine, 20.0, 479.67));
  test('Triple Point of Water to Celsius',
      () => approx(TemperatureUnit.triplePointOfWater, celsius, 2, 273.17));
}
