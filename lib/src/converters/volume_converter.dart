import '../converter.dart';
import '../util/extensions.dart';

// ignore_for_file: public_member_api_docs

const cubicMillimeter = VolumeUnit.cubicMillimeter;
const cubicCentimeter = VolumeUnit.cubicCentimeter;
const cubicMeter = VolumeUnit.cubicMeter;
const cubicKilometer = VolumeUnit.cubicKilometer;

const cubicMile = VolumeUnit.cubicMile;
const cubicYard = VolumeUnit.cubicYard;
const cubicFoot = VolumeUnit.cubicFoot;
const cubicInch = VolumeUnit.cubicInch;

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

/// Converter for numerous [VolumeUnit]s.
class VolumeConverter extends RatioConverter implements VolumeUnit {
  const VolumeConverter._(String id, double ratio) : super(id, r: ratio);

  @override
  String get category => 'volume';
}

/// An enum for numerous [VolumeConverter]s.
class VolumeUnit {
  const VolumeUnit._();

  // Base Unit: Cubic Meter

  static const cubicKilometer = VolumeConverter._('cubic_kilometer', 1E+9);
  static const cubicMeter = VolumeConverter._('cubic_meter', 1.0);
  static const cubicDecimeter = VolumeConverter._('cubic_decimeter', 1E-3);
  static const cubicCentimeter = VolumeConverter._('cubic_centimeter', 1E-6);
  static const cubicMillimeter = VolumeConverter._('cubic_millimeter', 1E-9);

  static const cubicMile = VolumeConverter._('cubic_mile', 4168181825.4);
  static const cubicYard = VolumeConverter._('cubic_yard', 0.764554858);
  static const cubicFoot = VolumeConverter._('cubic_foot', 0.0283168466);
  static const cubicInch = VolumeConverter._('cubic_inch', 0.0000163871);

  static const exaliter = VolumeConverter._('exaliter', 1E+15);
  static const petaliter = VolumeConverter._('petaliter', 1E+12);
  static const teraliter = VolumeConverter._('teraliter', 1E+9);
  static const gigaliter = VolumeConverter._('gigaliter', 1E+6);
  static const megaliter = VolumeConverter._('megaliter', 1E+3);
  static const kiloliter = VolumeConverter._('kiloliter', 1E+3);
  static const hectoliter = VolumeConverter._('hectoliter', 0.1);
  static const dekaliter = VolumeConverter._('dekaliter', 0.01);
  static const liter = VolumeConverter._('liter', 1E-3);
  static const deciliter = VolumeConverter._('deciliter', 1E-4);
  static const centiliter = VolumeConverter._('centiliter', 1E-5);
  static const milliliter = VolumeConverter._('milliliter', 1E-6);
  static const microliter = VolumeConverter._('microliter', 1E-9);
  static const nanoliter = VolumeConverter._('nanoliter', 1E-12);
  static const picoliter = VolumeConverter._('picoliter', 1E-15);
  static const femtoliter = VolumeConverter._('femtoliter', 1E-18);
  static const attoliter = VolumeConverter._('attoliter', 1E-21);

  static const barrelOil = VolumeConverter._('barrel_oil', 0.1589872949);
  static const barrelUS = VolumeConverter._('barrel_us', 0.1192404712);
  static const barrelUK = VolumeConverter._('barrel_uk', 0.16365924);

  static const gallonUS = VolumeConverter._('gallon_us', 0.0037854118);
  static const gallonUK = VolumeConverter._('gallon_uk', 0.00454609);

  static const quartUS = VolumeConverter._('quart_us', 0.0009463529);
  static const quartUK = VolumeConverter._('quart_uk', 0.0011365225);

  static const pintUS = VolumeConverter._('pint_us', 0.0004731765);
  static const pintUK = VolumeConverter._('pint_uk', 0.0005682613);

  static const cup = VolumeConverter._('cup', 0.00025);
  static const cupUS = VolumeConverter._('cup_us', 0.0002365882);
  static const cupUK = VolumeConverter._('cup_uk', 0.0002841306);

  static const fluidOunceUS = VolumeConverter._('fluid_ounce_us', 0.0000295735);
  static const fluidOunceUK = VolumeConverter._('fluid_ounce_uk', 0.0000284131);

  static const tablespoon = VolumeConverter._('tablespoon', 0.000015);
  static const tablespoonUS = VolumeConverter._('tablespoon_us', 0.0147867648);
  static const tablespoonUK = VolumeConverter._('tablespoon_uk', 0.0000177582);
  static const dessertspoonUS = VolumeConverter._('dessertspoon_us', 0.0000098578);
  static const dessertspoonUK = VolumeConverter._('dessertspoon_uk', 0.0000118388);
  static const teaspoon = VolumeConverter._('teaspoon', 0.000005);
  static const teaspoonUS = VolumeConverter._('teaspoon_us', 0.0000049289);
  static const teaspoonUK = VolumeConverter._('teaspoon_uk', 0.0000059194);

  static const gillUS = VolumeConverter._('gill_us', 0.0001182941);
  static const gillUK = VolumeConverter._('gill_uk', 0.0001420653);

  static const minimUS = VolumeConverter._('minim_us', 6.161151992E-8);
  static const minimUK = VolumeConverter._('minim_uk', 5.91938802E-8);

  static const tonRegister = VolumeConverter._('ton_register', 2.8316846592);

  static const dram = VolumeConverter._('dram', 0.0000036967);

  static const drop = VolumeConverter._('drop', 5E-8);
  static const earthVolume = VolumeConverter._('earths_volume', 1.082999999E+21);

  static const common = [
    liter,
    milliliter,
    cubicKilometer,
    cubicMeter,
    cubicCentimeter,
    cubicMillimeter,
    cubicMile,
    cubicYard,
    cubicFoot,
    cubicInch,
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
    cubicMile,
    cubicYard,
    cubicFoot,
    cubicInch,
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
    earthVolume,
  ];

  /// Returns the [VolumeConverter] for this [id] or null
  /// if there is no [VolumeConverter] associated with this id.
  static VolumeConverter? parse(String? id) => units.find(id);
}
