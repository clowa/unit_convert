import '../converter.dart';

const bar = PressureUnit.bar;
const millibar = PressureUnit.millibar;
const microbar = PressureUnit.microbar;

const psi = PressureUnit.psi;
const ksi = PressureUnit.ksi;

const micropascal = PressureUnit.micropascal;
const millipascal = PressureUnit.millipascal;
const centipascal = PressureUnit.centipascal;
const pascal = PressureUnit.pascal;
const dekapascal = PressureUnit.dekapascal;
const hectopascal = PressureUnit.hectopascal;
const kilopascal = PressureUnit.kilopascal;
const megapascal = PressureUnit.megapascal;
const gigapascal = PressureUnit.gigapascal;

const standardAtmosphere = PressureUnit.standardAtmosphere;

const torr = PressureUnit.torr;

class PressureConverter extends RatioConverter {
  const PressureConverter._(String id, String symbol, double ratio)
      : super(id, s: symbol, r: ratio);

  @override
  String get category => 'pressure';
}

class PressureUnit {
  const PressureUnit._();
  
  // Base Unit: Bar

  // Common units
  static const bar = PressureConverter._('bar', null, 1.0);
  static const millibar = PressureConverter._('millibar', 'mBar', 1E-3);
  static const microbar = PressureConverter._('microbar', 'µBar', 1E-6);

  static const psi = PressureConverter._('psi', 'psi', 0.0689475729);
  static const ksi = PressureConverter._('ksi', 'ksi', 68.947572932);

  static const attopascal = PressureConverter._('attopascal', 'fPa', 1E-23);
  static const femtopascal = PressureConverter._('femtopascal', 'fPa', 1E-20);
  static const picopascal = PressureConverter._('picopascal', 'pPa', 1E-17);
  static const nanopascal = PressureConverter._('nanopascal', 'nPa', 1E-14);
  static const micropascal = PressureConverter._('micropascal', 'µPa', 1E-11);
  static const millipascal = PressureConverter._('millipascal', 'mPa', 1E-8);
  static const centipascal = PressureConverter._('centipascal', 'cPa', 1E-7);
  static const decipascal = PressureConverter._('decipascal', 'dPa', 1E-6);
  static const pascal = PressureConverter._('pascal', 'Pa', 1E-5);
  static const dekapascal = PressureConverter._('dekapascal', 'daPa', 1E-4);
  static const hectopascal = PressureConverter._('hectopascal', 'hPa', 0.001);
  static const kilopascal = PressureConverter._('kilopascal', 'kPa', 0.01);
  static const megapascal = PressureConverter._('megapascal', 'MPa', 10.0);
  static const gigapascal = PressureConverter._('gigapascal', 'GPa', 1E+4);
  static const terapascal = PressureConverter._('terapascal', 'TPa', 1E+7);
  static const petapascal = PressureConverter._('petapascal', 'PPa', 1E+10);
  static const exapascal = PressureConverter._('exapascal', 'EPa', 1E+13);

  static const newtonSquareMeter = PressureConverter._('newton_square_meter', null, 1E-5);
  static const newtonSquareCentimeter =
      PressureConverter._('newton_square_centimeter', null, 0.1);
  static const newtonSquareMillimeter =
      PressureConverter._('newton_square_millimeter', null, 10.0);
  static const kilonewtonSquareMeter =
      PressureConverter._('kilonewton_square_meter', null, 0.01);

  static const standardAtmosphere =
      PressureConverter._('standard_atmosphere', 'atm', 1.01325);
  static const technicalAtmosphere =
      PressureConverter._('technical_atmosphere', 'at', 0.980665);

  static const torr = PressureConverter._('torr', 'Torr', 0.0013332237);

  static const centimeterMercury0Deg =
      PressureConverter._('centimeter_mercury_0_deg', null, 0.0133322);
  static const millimeterMercury0Deg =
      PressureConverter._('millimeter_mercury_0_deg', null, 0.00133322);
  static const inchMercury32Deg =
      PressureConverter._('inch_mercury_32_deg', 'inHg', 0.0338638);
  static const inchMercury60Deg =
      PressureConverter._('inch_mercury_60_deg', 'inHg', 0.0337685);

  static const centimeterWater4Deg =
      PressureConverter._('centimeter_water_4_deg', null, 0.000980638);
  static const millimeterWater4Deg =
      PressureConverter._('millimeter_water_4_deg', null, 0.0000980638);
  static const inchWater4Deg =
      PressureConverter._('inch_water_4_deg', 'inAq', 0.00249082);
  static const footWater4Deg = PressureConverter._('foot_water_4_deg', 'ftAq', 0.0298898);
  static const inchWater60Deg =
      PressureConverter._('inch_water_60_deg', 'inAq', 0.00248843);
  static const footWater60Deg =
      PressureConverter._('foot_water_60_deg', 'inAq', 0.02986116);

  static const common = [
    bar,
    millibar,
    microbar,
    attopascal,
    femtopascal,
    picopascal,
    nanopascal,
    micropascal,
    millipascal,
    centipascal,
    decipascal,
    pascal,
    dekapascal,
    kilopascal,
    megapascal,
    gigapascal,
    terapascal,
    petapascal,
    terapascal,
    exapascal,
    psi,
    ksi,
    standardAtmosphere,
  ];

  static const units = [
    bar,
    millibar,
    microbar,
    attopascal,
    femtopascal,
    picopascal,
    nanopascal,
    micropascal,
    millipascal,
    centipascal,
    decipascal,
    pascal,
    dekapascal,
    kilopascal,
    megapascal,
    gigapascal,
    terapascal,
    petapascal,
    terapascal,
    exapascal,
    psi,
    ksi,
    standardAtmosphere,
    technicalAtmosphere,
    torr,
    centimeterMercury0Deg,
    millimeterMercury0Deg,
    inchMercury32Deg,
    inchMercury60Deg,
    centimeterWater4Deg,
    millimeterWater4Deg,
    inchWater4Deg,
    footWater4Deg,
    inchWater60Deg,
    footWater60Deg,
  ];
}
