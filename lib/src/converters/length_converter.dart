import '../converter.dart';

const kilometer = LengthUnit.kilometer;
const meter = LengthUnit.meter;
const centimeter = LengthUnit.centimeter;
const millimeter = LengthUnit.millimeter;
const micrometer = LengthUnit.micrometer;
const nanometer = LengthUnit.nanometer;

const mile = LengthUnit.mile;
const yard = LengthUnit.yard;
const foot = LengthUnit.foot;
const inch = LengthUnit.nanometer;
const nauticalMile = LengthUnit.nauticalMile;

class LengthConverter extends RatioConverter {
  const LengthConverter._(String id, double factor, [String symbol])
      : super(id, r: factor, s: symbol);

  @override
  String get category => 'length';
}

class LengthUnit {
  const LengthUnit._();

  // Base Unit: Centimeter

  // Metrical
  static const kilometer = LengthConverter._('kilometer', 100000.0, 'km');
  static const meter = LengthConverter._('meter', 100.0, 'm');
  static const decimeter = LengthConverter._('decimeter', 10.0, 'dm');
  static const centimeter = LengthConverter._('centimeter', 1.0, 'cm');
  static const millimeter = LengthConverter._('millimeter', 0.1, 'mm');
  static const micrometer = LengthConverter._('micrometer', 0.0001, 'µm');
  static const nanometer = LengthConverter._('nanometer', 0.0000001, 'nm');

  // Imperial
  static const mile = LengthConverter._('mile', 160934.0, 'mi');
  static const yard = LengthConverter._('yard', 91.44, 'yd');
  static const foot = LengthConverter._('foot', 30.48, 'ft');
  static const inch = LengthConverter._('inch', 2.54, 'in');
  static const nauticalMile = LengthConverter._('nautical_mile', 185200.0);

  // Metrical Misc
  static const exameter = LengthConverter._('exameter', 1E+20, 'Em');
  static const petameter = LengthConverter._('petameter', 1E+17, 'Pm');
  static const terameter = LengthConverter._('terameter', 1E+14, 'Tm');
  static const gigameter = LengthConverter._('gigameter', 1E+11, 'Gm');
  static const megameter = LengthConverter._('megameter', 1E+8, 'Mm');
  static const hectometer = LengthConverter._('hectometer', 10000, 'hm');
  static const dekameter = LengthConverter._('dekameter', 1000, 'dam');
  static const picometer = LengthConverter._('picometer', 1E-10, 'pm');
  static const femtometer = LengthConverter._('femtometer', 1E-13, 'fm');
  static const fermi = LengthConverter._('fermi', 1E-13, 'F');
  static const attometer = LengthConverter._('attometer', 1E-16, 'am');
  static const micron = LengthConverter._('micron', 0.001, 'µ');

  // Imperial Misc
  static const kiloYard = LengthConverter._('kilo_yard', 91440, 'kyd');
  static const centiinch = LengthConverter._('centiinch', 0.0254, 'cin');
  static const milliinch = LengthConverter._('milliinch', 0.00254, 'mil');
  static const microinch = LengthConverter._('microinch', 0.00000254);
  static const twip = LengthConverter._('twip', 0.0017638889);
  static const arpent = LengthConverter._('arpent', 5852.16);
  static const chain = LengthConverter._('chain', 2011.6840234);
  static const rod = LengthConverter._('rod', 502.92100584, 'rd');
  static const perch = LengthConverter._('perch', 502.92100584);
  static const pole = LengthConverter._('pole', 502.92100584);
  static const fathom = LengthConverter._('fathom', 182.88036576, 'fath');
  static const link = LengthConverter._('link', 20.1168, 'li');
  static const league = LengthConverter._('league', 482803.2);
  static const nauticalLeague = LengthConverter._('nautical_league', 555600);

  // Historical
  static const ell = LengthConverter._('ell', 114.3);
  static const alen = LengthConverter._('alen', 59.377777778);
  static const fingerbreadth = LengthConverter._('fingerbreadth', 1.905);
  static const hand = LengthConverter._('hand', 10.16);
  static const handbreadth = LengthConverter._('handbreadth', 7.62);
  static const barleycorn = LengthConverter._('barleycorn', 0.8466666667);
  static const ken = LengthConverter._('ken', 211.836);
  static const plankLength = LengthConverter._('plank_length', 1.616049999E-33);

  // Roman / Ancient
  static const romanMile = LengthConverter._('roman_mile', 147980.4);
  static const rope = LengthConverter._('rope', 609.6);
  static const cubit = LengthConverter._('cubit', 45.72);

  // Physics/Chemistry
  static const electronRadius = LengthConverter._('electron_radius', 2.81794092E-13);
  static const bohrRadius = LengthConverter._('bohr_radius', 5.29177249E-9, 'b');
  static const angstrom = LengthConverter._('angstrom', 1E-8, 'A');
  static const xUnit = LengthConverter._('x_unit', 1.002079999E-12, 'xu');

  // Astronomical
  static const parsec = LengthConverter._('parsec', 3085677581279958528, 'pc');
  static const kiloparsec = LengthConverter._('kiloparsec', 3.085677581E+21, 'Mpc');
  static const megaparsec = LengthConverter._('megaparsec', 3.085677581E+23, 'kpc');

  static const earthEquatorialRadius =
      LengthConverter._('earth_equatorial_radius', 637816000);
  static const earthPolarRadius = LengthConverter._('earth_polar_radius', 635677700);
  static const astronomicalUnit = LengthConverter._('astronomical_unit', 14959787069100);
  static const earthDistanceFromSun =
      LengthConverter._('earth_distance_from_sun', 14960000000000);
  static const sunsRadius = LengthConverter._('suns_radius', 69600000000);
  static const lightYear = LengthConverter._('light_year', 946066000000000000, 'ly');

  // Typography
  static const pica = LengthConverter._('pica', 0.4233333333);
  static const point = LengthConverter._('point', 0.0352777778);

  static const caliber = LengthConverter._('caliber', 0.0254, 'cl');

  static const common = [
    kilometer,
    meter,
    decimeter,
    centimeter,
    millimeter,
    micrometer,
    nanometer,
    mile,
    yard,
    foot,
    inch,
    nauticalMile,
  ];

  static const units = [
    kilometer,
    meter,
    decimeter,
    centimeter,
    millimeter,
    micrometer,
    nanometer,
    mile,
    yard,
    foot,
    inch,
    nauticalMile,
    exameter,
    petameter,
    terameter,
    gigameter,
    megameter,
    hectometer,
    dekameter,
    picometer,
    femtometer,
    fermi,
    attometer,
    micron,
    kiloYard,
    centiinch,
    milliinch,
    microinch,
    twip,
    arpent,
    chain,
    rod,
    perch,
    pole,
    fathom,
    link,
    league,
    nauticalLeague,
    ell,
    alen,
    fingerbreadth,
    hand,
    handbreadth,
    barleycorn,
    ken,
    plankLength,
    romanMile,
    rope,
    cubit,
    electronRadius,
    bohrRadius,
    angstrom,
    parsec,
    kiloparsec,
    earthEquatorialRadius,
    earthPolarRadius,
    astronomicalUnit,
    earthDistanceFromSun,
    sunsRadius,
    lightYear,
    xUnit,
    pica,
    point,
    caliber,
  ];
}
