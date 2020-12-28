import '../converter.dart';

const exagram = WeightUnit.exagram;
const petagram = WeightUnit.petagram;
const teragram = WeightUnit.teragram;
const gigagram = WeightUnit.gigagram;
const megagram = WeightUnit.megagram;
const kilogram = WeightUnit.kilogram;
const hectogram = WeightUnit.hectogram;
const dekagram = WeightUnit.dekagram;
const gram = WeightUnit.gram;
const decigram = WeightUnit.decigram;
const centigram = WeightUnit.centigram;
const milligram = WeightUnit.milligram;
const microgram = WeightUnit.microgram;
const nanogram = WeightUnit.nanogram;
const picogram = WeightUnit.picogram;
const femtogram = WeightUnit.femtogram;
const attogram = WeightUnit.attogram;

const ton = WeightUnit.ton;
const tonUS = WeightUnit.tonUS;
const tonUK = WeightUnit.tonUK;
const kiloton = WeightUnit.kiloton;
const quintal = WeightUnit.quintal;

const pound = WeightUnit.pound;
const poundal = WeightUnit.poundal;
const ounce = WeightUnit.ounce;
const carat = WeightUnit.carat;

class WeightConverter extends RatioConverter {
  const WeightConverter._(String id, String symbol, double ratio)
      : super(symbol, s: symbol, r: ratio);

  @override
  String get category => 'weight';
}

class WeightUnit {
  const WeightUnit._();

  // Base Unit: Gram

  static const exagram = WeightConverter._('exagram', 'Eg', 1E+17);
  static const petagram = WeightConverter._('petagram', 'Pg', 1E+14);
  static const teragram = WeightConverter._('teragram', 'Tg', 1E+11);
  static const gigagram = WeightConverter._('gigagram', 'Gg', 1E+9);
  static const megagram = WeightConverter._('megagram', 'Mg', 1E+6);
  static const kilogram = WeightConverter._('kilogram', 'kg', 1E+3);
  static const hectogram = WeightConverter._('hectogram', 'hg', 100);
  static const dekagram = WeightConverter._('dekagram', 'dag', 10);
  static const gram = WeightConverter._('gram', 'g', 1.0);
  static const decigram = WeightConverter._('decigram', 'dg', 0.1);
  static const centigram = WeightConverter._('centigram', 'cg', 0.01);
  static const milligram = WeightConverter._('milligram', 'mg', 1E-3);
  static const microgram = WeightConverter._('microgram', 'µg', 1E-6);
  static const nanogram = WeightConverter._('nanogram', 'ng', 1E-9);
  static const picogram = WeightConverter._('picogram', 'pg', 1E-12);
  static const femtogram = WeightConverter._('femtogram', 'fg', 1E-15);
  static const attogram = WeightConverter._('attogram', 'fg', 1E-18);

  static const ton = WeightConverter._('ton', 't', 1E+6);
  static const tonUS = WeightConverter._('ton_us', 't', 907184.74);
  static const tonUK = WeightConverter._('ton_uk', 't', 1016046.9088);
  static const kiloton = WeightConverter._('kiloton', 'kt', 1E+9);
  static const quintal = WeightConverter._('quintal', 'cwt', 1E+5);

  static const pound = WeightConverter._('pound', 'lbs', 453.59237);
  static const poundal = WeightConverter._('poundal', 'pdl', 14.086719565);
  static const ounce = WeightConverter._('ounce', 'oz', 28.349523125);
  static const carat = WeightConverter._('carat', 'ct', 0.2);
  static const grain = WeightConverter._('grain', 'gr', 0.06479891);

  static const hundredWeightUS = WeightConverter._('hundredweight_us', null, 45359.237);
  static const hundredWeightUK = WeightConverter._('hundredweight_uk', null, 50802.34544);
  static const pennyweight = WeightConverter._('pennyweight', 'pwt', 1.55517384);

  static const quarterUS = WeightConverter._('quarter_us', 'qr (US)', 11339.80925);
  static const quarterUK = WeightConverter._('quarter_uk', 'qr (UK)', 12700.58636);
  static const stoneUS = WeightConverter._('stone_us', null, 5669.904625);
  static const stoneUK = WeightConverter._('stone_uk', null, 6350.29318);

  static const dalton = WeightConverter._('dalton', null, 1.66053E-24);
  static const atomicMassUnit =
      WeightConverter._('atomic_mass_unit', 'u', 1.660540199E-24);
  static const plankMass = WeightConverter._('plank_mass', null, 0.0000217671);
  static const electronMass = WeightConverter._('electro_mass', null, 9.109389699E-28);
  static const muonMass = WeightConverter._('muon_mass', null, 1.8835327E-25);
  static const protonMass = WeightConverter._('proton_mass', null, 1.672623099E-24);
  static const neutronMass = WeightConverter._('neutron_mass', null, 1.6749286E-24);
  static const deuteronMass = WeightConverter._('deuteron_mass', null, 3.343585999E-24);

  static const earthMass = WeightConverter._('earth_mass', null, 5.976E+27);
  static const sunMass = WeightConverter._('sun_mass', null, 2E+33);

  static const common = [
    exagram,
    petagram,
    teragram,
    gigagram,
    megagram,
    kilogram,
    hectogram,
    dekagram,
    gram,
    decigram,
    centigram,
    milligram,
    microgram,
    nanogram,
    picogram,
    femtogram,
    attogram,
    ton,
    tonUS,
    tonUK,
    kiloton,
    quintal,
    pound,
    poundal,
    ounce,
    carat,
    grain,
  ];

  static const units = [
    exagram,
    petagram,
    teragram,
    gigagram,
    megagram,
    kilogram,
    hectogram,
    dekagram,
    gram,
    decigram,
    centigram,
    milligram,
    microgram,
    nanogram,
    picogram,
    femtogram,
    attogram,
    ton,
    tonUS,
    tonUK,
    kiloton,
    quintal,
    pound,
    poundal,
    ounce,
    carat,
    grain,
    hundredWeightUS,
    hundredWeightUK,
    pennyweight,
    quarterUS,
    quarterUK,
    stoneUS,
    stoneUK,
    dalton,
    atomicMassUnit,
    plankMass,
    electronMass,
    muonMass,
    protonMass,
    neutronMass,
    deuteronMass,
    earthMass,
    sunMass,
  ];
}
