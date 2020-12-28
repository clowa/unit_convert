import '../converter.dart';

const binary = NumberBase.binary;
const octal = NumberBase.octal;
const decimal = NumberBase.decimal;
const hexadecimal = NumberBase.hexadecimal;

class NumberConverter extends StringConverter {
  final int radix;
  const NumberConverter._(String id, this.radix) : super(id);

  @override
  String get name => Converter.i18n['numbers'][id] ?? id;

  @override
  String to(Converter<String> other, String value) {
    final o = typeCheckConverter<NumberConverter>(other);
    final base = int.parse(value, radix: radix);
    return base.toRadixString(o.radix).toUpperCase();
  }
}

class NumberBase {
  const NumberBase._();

  // Base Unit: Binary
  static const binary = NumberConverter._('binary', 2);
  static const octal = NumberConverter._('octal', 8);
  static const decimal = NumberConverter._('decimal', 10);
  static const hexadecimal = NumberConverter._('hexadecimal', 16);

  static const base2 = NumberConverter._('base_2', 2);
  static const base3 = NumberConverter._('base_3', 3);
  static const base4 = NumberConverter._('base_4', 4);
  static const base5 = NumberConverter._('base_5', 5);
  static const base6 = NumberConverter._('base_6', 6);
  static const base7 = NumberConverter._('base_7', 7);
  static const base8 = NumberConverter._('base_8', 8);
  static const base9 = NumberConverter._('base_9', 9);
  static const base10 = NumberConverter._('base_10', 10);
  static const base11 = NumberConverter._('base_11', 11);
  static const base12 = NumberConverter._('base_12', 12);
  static const base13 = NumberConverter._('base_13', 13);
  static const base14 = NumberConverter._('base_14', 14);
  static const base15 = NumberConverter._('base_15', 15);
  static const base16 = NumberConverter._('base_16', 16);
  static const base17 = NumberConverter._('base_17', 17);
  static const base18 = NumberConverter._('base_18', 18);
  static const base19 = NumberConverter._('base_19', 19);
  static const base20 = NumberConverter._('base_20', 20);
  static const base21 = NumberConverter._('base_21', 21);
  static const base22 = NumberConverter._('base_22', 22);
  static const base23 = NumberConverter._('base_23', 23);
  static const base24 = NumberConverter._('base_24', 24);
  static const base25 = NumberConverter._('base_25', 25);
  static const base26 = NumberConverter._('base_26', 26);
  static const base27 = NumberConverter._('base_27', 27);
  static const base28 = NumberConverter._('base_28', 28);
  static const base29 = NumberConverter._('base_29', 29);
  static const base30 = NumberConverter._('base_30', 30);
  static const base31 = NumberConverter._('base_31', 31);
  static const base32 = NumberConverter._('base_32', 32);
  static const base64 = NumberConverter._('base_64', 64);
  static const base128 = NumberConverter._('base_128', 128);
  static const base256 = NumberConverter._('base_256', 256);
}
