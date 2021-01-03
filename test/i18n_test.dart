import 'test.dart';

void main() {
  test('Should set the correct locale based on the locale provided', () async {
    // act
    Converter.locale = 'de_DE';
    // assert
    expect(Converter.locale, equals('de'));
    expect(LengthUnit.centimeter.name, equals('Zentimeter'));
  });
}
