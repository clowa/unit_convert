import '../converter.dart';

const binary = NumberBase.binary;
const octal = NumberBase.octal;
const decimal = NumberBase.decimal;
const hexadecimal = NumberBase.hexadecimal;

class NumberConverter extends StringConverter {
  final int radix;
  const NumberConverter._(String id, this.radix) : super(id);

  const NumberConverter.radix(int radix) : this._('base_$radix', radix);

  @override
  String get category => 'number';

  @override
  String get name {
    if (id.startsWith('base')) {
      String b = Converter.i18n['numbers']['base'];
      return b.replaceFirst('{}', radix.toString());
    } else {
      return Converter.i18n['numbers'][id] ?? id;
    }
  }

  @override
  String to(Converter<String> other, String value) {
    final o = typeCheckConverter<NumberConverter>(other);
    final base = int.parse(value, radix: radix);
    return base.toRadixString(o.radix).toUpperCase();
  }
}

class NumberBase {
  const NumberBase._();

  static NumberConverter radix(int radix) => NumberConverter._('base_$radix', radix);

  // Base Unit: Binary
  static const binary = NumberConverter._('binary', 2);
  static const octal = NumberConverter._('octal', 8);
  static const decimal = NumberConverter._('decimal', 10);
  static const hexadecimal = NumberConverter._('hexadecimal', 16);

  static const base2 = NumberConverter.radix(2);
  static const base3 = NumberConverter.radix(3);
  static const base4 = NumberConverter.radix(4);
  static const base5 = NumberConverter.radix(5);
  static const base6 = NumberConverter.radix(6);
  static const base7 = NumberConverter.radix(7);
  static const base8 = NumberConverter.radix(8);
  static const base9 = NumberConverter.radix(9);
  static const base10 = NumberConverter.radix(10);
  static const base11 = NumberConverter.radix(11);
  static const base12 = NumberConverter.radix(12);
  static const base13 = NumberConverter.radix(13);
  static const base14 = NumberConverter.radix(14);
  static const base15 = NumberConverter.radix(15);
  static const base16 = NumberConverter.radix(16);
  static const base32 = NumberConverter.radix(32);
  static const base64 = NumberConverter.radix(64);
  static const base128 = NumberConverter.radix(128);
  static const base256 = NumberConverter.radix(256);
}
