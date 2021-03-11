import 'test.dart';

void main() {
  test('Dyne to Kilojoule', () => approx(ForceUnit.dyne, millinewton, 1, 0.01));
}
