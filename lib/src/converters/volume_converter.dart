import '../converter.dart';

const cubicMillimeter = VolumeUnit.cubicMillimeter;
const cubicCentimeter = VolumeUnit.cubicCentimeter;
const cc = VolumeUnit.cc;
const cubicMeter = VolumeUnit.cubicMeter;
const cubicKilometer = VolumeUnit.cubicKilometer;

const exaliter = VolumeUnit.exaliter;
const petaliter = VolumeUnit.petaliter;
const teraliter = VolumeUnit.teraliter;
const gigaliter = VolumeUnit.gigaliter;
const megaliter = VolumeUnit.megaliter;
const kiloliter = VolumeUnit.kiloliter;
const hectoliter = VolumeUnit.hectoliter;
const dekaliter = VolumeUnit.dekaliter;
const liter = VolumeUnit.liter;
const deciliter = VolumeUnit.deciliter;
const centiliter = VolumeUnit.centiliter;
const milliliter = VolumeUnit.milliliter;
const microliter = VolumeUnit.microliter;
const nanoliter = VolumeUnit.nanoliter;
const picoliter = VolumeUnit.picoliter;
const femtoliter = VolumeUnit.femtoliter;
const attoliter = VolumeUnit.attoliter;

const barrelOil = VolumeUnit.barrelOil;
const barrelUS = VolumeUnit.barrelUS;
const barrelUK = VolumeUnit.barrelUK;

const gallonUS = VolumeUnit.gallonUS;
const gallonUK = VolumeUnit.gallonUK;

class VolumeConverter extends RatioConverter {
  const VolumeConverter._(String id, String symbol, double ratio)
      : super(symbol, s: symbol, r: ratio);

  @override
  String get category => 'volume';
}

class VolumeUnit {
  const VolumeUnit._();

  // Base Unit: Cubic Meter

  static const cubicMillimeter = VolumeConverter._('cubic_millimeter', 'mm^3', 1E-9);
  static const cubicCentimeter = VolumeConverter._('cubic_centimeter', 'cm^3', 1E-6);
  static const cc = VolumeConverter._('cc', 'cm^3', 1E-6);
  static const cubicMeter = VolumeConverter._('cubic_meter', 'm^3', 1.0);
  static const cubicKilometer = VolumeConverter._('cubic_kilometer', 'km^3', 1E+9);

  static const exaliter = VolumeConverter._('exaliter', 'EL', 1E+15);
  static const petaliter = VolumeConverter._('petaliter', 'PL', 1E+12);
  static const teraliter = VolumeConverter._('teraliter', 'TL', 1E+9);
  static const gigaliter = VolumeConverter._('gigaliter', 'GL', 1E+6);
  static const megaliter = VolumeConverter._('megaliter', 'ML', 1E+3);
  static const kiloliter = VolumeConverter._('kiloliter', 'kL', 1E+3);
  static const hectoliter = VolumeConverter._('hectoliter', 'hL', 0.1);
  static const dekaliter = VolumeConverter._('dekaliter', 'daL', 0.01);
  static const liter = VolumeConverter._('liter', 'L', 1E-3);
  static const deciliter = VolumeConverter._('deciliter', 'dL', 1E-4);
  static const centiliter = VolumeConverter._('centiliter', 'cL', 1E-5);
  static const milliliter = VolumeConverter._('milliliter', 'mL', 1E-6);
  static const microliter = VolumeConverter._('microliter', 'µL', 1E-9);
  static const nanoliter = VolumeConverter._('nanoliter', 'nL', 1E-12);
  static const picoliter = VolumeConverter._('picoliter', 'pL', 1E-15);
  static const femtoliter = VolumeConverter._('femtoliter', 'fL', 1E-18);
  static const attoliter = VolumeConverter._('attoliter', 'aL', 1E-21);

  static const barrelOil = VolumeConverter._('barrel_oil', 'bbl (oil)', 0.1589872949);
  static const barrelUS = VolumeConverter._('barrel_us', 'bbl (US)', 0.1192404712);
  static const barrelUK = VolumeConverter._('barrel_uk', 'bbl (UK)', 0.16365924);

  static const gallonUS = VolumeConverter._('gallon_us', 'gal (US)', 0.0037854118);
  static const gallonUK = VolumeConverter._('gallon_uk', 'gal (UK)', 0.00454609);

  static const quartUS = VolumeConverter._('quart_us', 'qt (US)', 0.0009463529);
  static const quartUK = VolumeConverter._('quart_uk', 'qt (UK)', 0.0011365225);

  static const pintUS = VolumeConverter._('pint_us', 'pt (US)', 0.0004731765);
  static const pintUK = VolumeConverter._('pint_uk', 'pt (UK)', 0.0005682613);

  static const cup = VolumeConverter._('cup', null, 0.00025);
  static const cupUS = VolumeConverter._('cup_us', null, 0.0002365882);
  static const cupUK = VolumeConverter._('cup_uk', null, 0.0002841306);

  static const fluidOunceUS =
      VolumeConverter._('fluid_ounce_us', 'fl oz (US)', 0.0000295735);
  static const fluidOunceUK =
      VolumeConverter._('fluid_ounce_uk', 'fl oz (UK)', 0.0000284131);

  static const tablespoon = VolumeConverter._('tablespoon', null, 0.000015);
  static const tablespoonUS = VolumeConverter._('tablespoon_us', null, 0.0147867648);
  static const tablespoonUK = VolumeConverter._('tablespoon_uk', null, 0.0000177582);
  static const dessertspoonUS = VolumeConverter._('dessertspoon_us', null, 0.0000098578);
  static const dessertspoonUK = VolumeConverter._('dessertspoon_uk', null, 0.0000118388);
  static const teaspoon = VolumeConverter._('teaspoon', null, 0.000005);
  static const teaspoonUS = VolumeConverter._('teaspoon_us', null, 0.0000049289);
  static const teaspoonUK = VolumeConverter._('teaspoon_uk', null, 0.0000059194);

  static const gillUS = VolumeConverter._('gill_us', 'gi', 0.0001182941);
  static const gillUK = VolumeConverter._('gill_uk', 'gi (UK)', 0.0001420653);

  static const minimUS = VolumeConverter._('minim_us', null, 6.161151992E-8);
  static const minimUK = VolumeConverter._('minim_uk', null, 5.91938802E-8);

  static const tonRegister = VolumeConverter._('ton_register', 'ton reg', 2.8316846592);

  static const dram = VolumeConverter._('dram', 'dr', 0.0000036967);

  static const drop = VolumeConverter._('drop', null, 5E-8);
  static const earthsVolume = VolumeConverter._('earths_volume', null, 1.082999999E+21);

  static const common = [
    liter,
    milliliter,
    cubicKilometer,
    cubicMeter,
    cubicCentimeter,
    cubicMillimeter,
    exaliter,
    petaliter,
    teraliter,
    gigaliter,
    megaliter,
    kiloliter,
    hectoliter,
    dekaliter,
    liter,
    deciliter,
    centiliter,
    milliliter,
    microliter,
    nanoliter,
    picoliter,
    femtoliter,
    attoliter,
    barrelOil,
    barrelUS,
    barrelUK,
    gallonUS,
    gallonUK,
    quartUS,
    quartUK,
    pintUS,
    pintUK,
  ];

  static const units = [
    liter,
    milliliter,
    cubicKilometer,
    cubicMeter,
    cubicCentimeter,
    cubicMillimeter,
    exaliter,
    petaliter,
    teraliter,
    gigaliter,
    megaliter,
    kiloliter,
    hectoliter,
    dekaliter,
    liter,
    deciliter,
    centiliter,
    milliliter,
    microliter,
    nanoliter,
    picoliter,
    femtoliter,
    attoliter,
    barrelOil,
    barrelUS,
    barrelUK,
    gallonUS,
    gallonUK,
    quartUS,
    quartUK,
    pintUS,
    pintUK,
    cup,
    cupUS,
    cupUK,
    fluidOunceUS,
    fluidOunceUK,
    tablespoon,
    tablespoonUS,
    tablespoonUK,
    dessertspoonUS,
    dessertspoonUK,
    teaspoon,
    teaspoonUS,
    teaspoonUK,
    gillUS,
    gillUK,
    minimUS,
    minimUK,
    drop,
    tonRegister,
    dram,
    earthsVolume,
  ];
}
