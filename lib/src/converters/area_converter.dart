import '../converter.dart';
import '../util/extensions.dart';

// ignore_for_file: public_member_api_docs

const squareKilometer = AreaUnit.squareKilometer;
const squareMeter = AreaUnit.squareMeter;
const squareCentimeter = AreaUnit.squareCentimeter;
const squareMillimeter = AreaUnit.squareMillimeter;
const squareMicrometer = AreaUnit.squareMicrometer;
const squareNanometer = AreaUnit.squareNanometer;

const squareMile = AreaUnit.squareMile;
const squareYard = AreaUnit.squareYard;
const squareFoot = AreaUnit.squareFoot;
const squareInch = AreaUnit.squareInch;

const acre = AreaUnit.acre;
const hectare = AreaUnit.hectare;

/// Converter for numerous [AreaUnit]s.
class AreaConverter extends RatioConverter implements AreaUnit {
  const AreaConverter._(String id, double ratio) : super(id, r: ratio);

  @override
  String get category => 'area';
}

/// Enum for numerous [AreaConverter]s.
class AreaUnit {
  const AreaUnit._();

  // Base Unit: Square Meter

  static const squareKilometer = AreaConverter._('square_kilometer', 1E+6);
  static const squareHectometer = AreaConverter._('square_hectometer', 1E+4);
  static const squareDekameter = AreaConverter._('square_dekameter', 100);
  static const squareMeter = AreaConverter._('square_meter', 1.0);
  static const squareDecimeter = AreaConverter._('square_decimeter', 0.01);
  static const squareCentimeter = AreaConverter._('square_centimeter', 1E-4);
  static const squareMillimeter = AreaConverter._('square_millimeter', 1E-6);
  static const squareMicrometer = AreaConverter._('square_micrometer', 1E-12);
  static const squareNanometer = AreaConverter._('square_nanometer', 1E-18);

  static const squareMile = AreaConverter._('square_mile', 2589988.1103);
  static const squareYard = AreaConverter._('square_yard', 0.83612736);
  static const squareFoot = AreaConverter._('square_foot', 0.09290304);
  static const squareInch = AreaConverter._('square_inch', 0.00064516);

  static const are = AreaConverter._('are', 100.0);
  static const hectare = AreaConverter._('hectare', 1E+4);

  static const acre = AreaConverter._('acre', 4046.8564224);
  static const rood = AreaConverter._('rood', 1011.7141056);

  static const barn = AreaConverter._('barn', 1E-28);

  static const common = [
    squareKilometer,
    squareMeter,
    squareCentimeter,
    squareMillimeter,
    squareMicrometer,
    squareNanometer,
    squareMile,
    squareYard,
    squareFoot,
    squareInch,
    acre,
    are,
    hectare,
  ];

  static const units = [
    squareKilometer,
    squareMeter,
    squareCentimeter,
    squareMillimeter,
    squareMicrometer,
    squareNanometer,
    squareMile,
    squareYard,
    squareFoot,
    squareInch,
    are,
    acre,
    hectare,
    rood,
    barn,
  ];

  /// Returns the [AreaConverter] for this [id] or null
  /// if there is no [AreaConverter] associated with this id.
  static AreaConverter? parse(String? id) => units.find(id);
}
