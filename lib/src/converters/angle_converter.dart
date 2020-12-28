import '../converter.dart';

const degree = AngleUnit.degree;
const radian = AngleUnit.radian;

class AngleConverter extends NumericalConverter {
  const AngleConverter._(String id, String symbol, double ratio)
      : super(id, s: symbol, r: ratio);

  @override
  String get category => 'angle';
}

class AngleUnit {
  const AngleUnit._();

  // Base Unit: Degree

  // Common
  static const degree = AngleConverter._('degree', '°', 1.0);
  static const radian = AngleConverter._('radian', 'rad', 57.295779513);

  static const grad = AngleConverter._('grad', '^g', 0.9);
  static const minute = AngleConverter._('minute', "'", 1.0 / 60.0);
  static const second = AngleConverter._('second', '"', 1.0 / 3600.0);
  static const gon = AngleConverter._('gon', null, 0.9);
  static const sign = AngleConverter._('sign', null, 30.0);
  static const mil = AngleConverter._('mil', null, 0.05625);
  static const revolution = AngleConverter._('revolution', null, 360.0);
  static const circle = AngleConverter._('circle', null, 360.0);
  static const turn = AngleConverter._('turn', null, 360.0);
  static const quadrant = AngleConverter._('quadrant', null, 90.0);
  static const rightAngle = AngleConverter._('right_angle', null, 90.0);
  static const sextant = AngleConverter._('sextant', null, 60.0);

  static const common = [degree, radian];

  static const units = [
    degree,
    radian,
    grad,
    minute,
    second,
    gon,
    sign,
    mil,
    revolution,
    circle,
    turn,
    quadrant,
    rightAngle,
    sextant
  ];
}
