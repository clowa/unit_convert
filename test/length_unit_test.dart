import 'test.dart';

void main() {
  print(1E-6);
  print(0.000001);

  test('millimetres to meters', () => approx(millimeter, meter, 1000.0, 1.0));
  test('nanometre to centimeter', () => approx(nanometer, centimeter, 1000.0, 0.0001));
  test('kilometre to foot', () => approx(kilometer, foot, 10.0, 32808.39895));
  test('metres to miles', () => approx(meter, mile, 10.0, 0.00621));
  test('lightyear to kilometres',
      () => approx(LengthUnit.lightYear, kilometer, 1.0, 9460660000000.0));
  test('meter to picometer',
      () => approx(meter, LengthUnit.picometer, 1.0, 1000000000000.0));
}
