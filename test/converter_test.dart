import 'test.dart';

void main() {
  test('kilometer -> Kilometer', () => expect(kilometer.name, 'Kilometer'));

  test(
    'Should throw Argument error when trying to convert between two incompatible Units',
    () => expect(() => convert(byte, meter, 10.0), throwsArgumentError),
  );
}
