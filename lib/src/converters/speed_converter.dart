import '../converter.dart';
import '../util/extensions.dart';

// ignore_for_file: public_member_api_docs

const meterPerHour = SpeedUnit.meterPerHour;
const meterPerMinute = SpeedUnit.meterPerMinute;
const meterPerSecond = SpeedUnit.meterPerSecond;
const kilometerPerHour = SpeedUnit.kilometerPerHour;
const kilometerPerMinute = SpeedUnit.kilometerPerMinute;
const kilometerPerSecond = SpeedUnit.kilometerPerSecond;
const centimeterPerHour = SpeedUnit.centimeterPerHour;
const centimeterPerMinute = SpeedUnit.centimeterPerMinute;
const centimeterPerSecond = SpeedUnit.centimeterPerSecond;

const footPerHour = SpeedUnit.footPerHour;
const footPerMinute = SpeedUnit.footPerMinute;
const footPerSecond = SpeedUnit.footPerSecond;
const yardPerHour = SpeedUnit.yardPerHour;
const yardPerMinute = SpeedUnit.yardPerMinute;
const yardPerSecond = SpeedUnit.yardPerSecond;
const milePerHour = SpeedUnit.milePerHour;
const milePerMinute = SpeedUnit.milePerMinute;
const milePerSecond = SpeedUnit.milePerSecond;

const knot = SpeedUnit.knot;
const mach = SpeedUnit.mach;
final beaufort = SpeedUnit.beaufort;

/// Converter for numerous [SpeedUnit]s.
class SpeedConverter extends RatioConverter implements SpeedUnit {
  const SpeedConverter._(String id, double ratio, {ConversionFn? f, ConversionFn? r})
      : super(id, r: ratio, f: f, b: r);

  @override
  String get category => 'speed';
}

/// An enum for numerous [SpeedConverter]s.
class SpeedUnit {
  const SpeedUnit._();

  // Base Unit: Meter per Second

  static const meterPerHour = SpeedConverter._('meter_hour', 0.0002777778);
  static const meterPerMinute = SpeedConverter._('meter_minute', 1.0 / 6.0);
  static const meterPerSecond = SpeedConverter._('meter_second', 1.0);
  static const kilometerPerHour = SpeedConverter._('kilometer_hour', 0.2777777778);
  static const kilometerPerMinute = SpeedConverter._('kilometer_minute', 16 + 2 / 3);
  static const kilometerPerSecond = SpeedConverter._('kilometer_second', 1000.0);
  static const centimeterPerHour = SpeedConverter._('centimeter_hour', 0.0000027778);
  static const centimeterPerMinute = SpeedConverter._('centimeter_minute', 0.0001666667);
  static const centimeterPerSecond = SpeedConverter._('centimeter_second', 0.01);
  static const millimeterPerHour = SpeedConverter._('centimeter_hour', 2.777777777E-7);
  static const millimeterPerMinute = SpeedConverter._('centimeter_minute', 0.0000166667);
  static const millimeterPerSecond = SpeedConverter._('centimeter_second', 0.0000166667);

  static const footPerHour = SpeedConverter._('foot_hour', 0.0000846667);
  static const footPerMinute = SpeedConverter._('foot_minute', 0.00508);
  static const footPerSecond = SpeedConverter._('foot_second', 0.3048);
  static const yardPerHour = SpeedConverter._('yard_hour', 0.000254);
  static const yardPerMinute = SpeedConverter._('yard_minute', 0.01524);
  static const yardPerSecond = SpeedConverter._('yard_second', 0.9144);
  static const milePerHour = SpeedConverter._('mile_hour', 0.44704);
  static const milePerMinute = SpeedConverter._('mile_minute', 26.8224);
  static const milePerSecond = SpeedConverter._('mile_second', 1609.344);

  static const knot = SpeedConverter._('knot', 0.5144444444);
  static const knotUK = SpeedConverter._('knot_uk', 0.5147733333);

  static const speedOfLight = SpeedConverter._('speed_of_light', 299792458);
  static const earthsVelocity = SpeedConverter._('earths_velocity', 29765);

  static const mach = SpeedConverter._('mach', 295.0464);
  static final beaufort = SpeedConverter._(
    'beaufort',
    1.0,
    f: (ms) => (ms / 0.836).squared().cbrt(),
    r: (b) => 0.836 * b.cubed().sqrt(),
  );

  static final common = [
    meterPerHour,
    meterPerMinute,
    meterPerSecond,
    kilometerPerHour,
    kilometerPerMinute,
    kilometerPerSecond,
    centimeterPerHour,
    centimeterPerMinute,
    centimeterPerSecond,
    millimeterPerHour,
    millimeterPerMinute,
    millimeterPerSecond,
    footPerHour,
    footPerMinute,
    footPerSecond,
    yardPerHour,
    yardPerMinute,
    yardPerSecond,
    milePerHour,
    milePerMinute,
    milePerSecond,
    knot,
    mach,
    beaufort,
  ];

  static final units = [
    meterPerHour,
    meterPerMinute,
    meterPerSecond,
    kilometerPerHour,
    kilometerPerMinute,
    kilometerPerSecond,
    centimeterPerHour,
    centimeterPerMinute,
    centimeterPerSecond,
    millimeterPerHour,
    millimeterPerMinute,
    millimeterPerSecond,
    footPerHour,
    footPerMinute,
    footPerSecond,
    yardPerHour,
    yardPerMinute,
    yardPerSecond,
    milePerHour,
    milePerMinute,
    milePerSecond,
    knot,
    knotUK,
    speedOfLight,
    earthsVelocity,
    mach,
    beaufort,
  ];

  /// Returns the [SpeedConverter] for this [id] or null
  /// if there is no [SpeedConverter] associated with this id.
  static SpeedConverter? parse(String? id) => units.find(id);
}
