import '../converter.dart';
import '../util/extensions.dart';

// ignore_for_file: public_member_api_docs

const degree = AngleUnit.degree;
const radian = AngleUnit.radian;

/// Converter for numerous [AngleUnit]s.
class AngleConverter extends RatioConverter implements AngleUnit {
  const AngleConverter._(String id, double ratio) : super(id, r: ratio);

  @override
  String get category => 'angle';
}

/// Enum for numerous [AngleConverter]s.
class AngleUnit {
  const AngleUnit._();

  // Base Unit: Degree

  // Common
  static const degree = AngleConverter._('degree', 1.0);
  static const radian = AngleConverter._('radian', 57.295779513);

  static const grad = AngleConverter._('grad', 0.9);
  static const minute = AngleConverter._('minute', 1.0 / 60.0);
  static const second = AngleConverter._('second', 1.0 / 3600.0);
  static const gon = AngleConverter._('gon', 0.9);
  static const sign = AngleConverter._('sign', 30.0);
  static const mil = AngleConverter._('mil', 0.05625);
  static const revolution = AngleConverter._('revolution', 360.0);
  static const circle = AngleConverter._('circle', 360.0);
  static const turn = AngleConverter._('turn', 360.0);
  static const quadrant = AngleConverter._('quadrant', 90.0);
  static const rightAngle = AngleConverter._('right_angle', 90.0);
  static const sextant = AngleConverter._('sextant', 60.0);

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

  /// Returns the [TemperatureConverter] for this [id] or null
  /// if there is no [TemperatureConverter] associated with this id.
  static AngleConverter? parse(String? id) => units.find(id);
}
