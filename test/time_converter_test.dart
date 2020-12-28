import 'test.dart';

void main() {
  test('Hours to Year', () => approx(hour, year, 24, 0.00274));
  test('Fortnight to Month', () => approx(fortnight, month, 2, 0.92055));
  test('Octennial to Quinquennial',
      () => approx(TimeUnit.octennial, TimeUnit.quinquennial, 2, 3.2));
  test('Second to Hour', () => approx(second, hour, 1, 0.00028));
}
