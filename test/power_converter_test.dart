import 'test.dart';

void main() {
  test('Kilowatt to Watt', () => approx(kilowatt, watt, 10, 1E+4));
  test('Exawatt to Terawatt', () => approx(exawatt, terawatt, 1, 1E+6));
  test('Pferdestärke to Kilowatt',
      () => approx(PowerUnit.pferdestarke, kilowatt, 1, 0.7355));
  test('Kilocalorie/Hour to Kilocalorie/Minute',
      () => approx(PowerUnit.kiloCaloriesPerHour, PowerUnit.kiloCaloriesPerMinute, 1, 0.01667));
}
