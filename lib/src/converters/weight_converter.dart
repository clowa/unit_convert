import '../converter.dart';
import '../util/extensions.dart';

// ignore_for_file: public_member_api_docs

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

/// Converter for numerous [WeightUnit]s.
class WeightConverter extends RatioConverter {
  const WeightConverter._(String id, double ratio) : super(id, r: ratio);

  @override
  String get category => 'weight';
}

/// An enum for numerous [WeightConverter]s.
class WeightUnit {
  const WeightUnit._();

  // Base Unit: Gram

  static const exagram = WeightConverter._('exagram', 1E+17);
  static const petagram = WeightConverter._('petagram', 1E+14);
  static const teragram = WeightConverter._('teragram', 1E+11);
  static const gigagram = WeightConverter._('gigagram', 1E+9);
  static const megagram = WeightConverter._('megagram', 1E+6);
  static const kilogram = WeightConverter._('kilogram', 1E+3);
  static const hectogram = WeightConverter._('hectogram', 100);
  static const dekagram = WeightConverter._('dekagram', 10);
  static const gram = WeightConverter._('gram', 1.0);
  static const decigram = WeightConverter._('decigram', 0.1);
  static const centigram = WeightConverter._('centigram', 0.01);
  static const milligram = WeightConverter._('milligram', 1E-3);
  static const microgram = WeightConverter._('microgram', 1E-6);
  static const nanogram = WeightConverter._('nanogram', 1E-9);
  static const picogram = WeightConverter._('picogram', 1E-12);
  static const femtogram = WeightConverter._('femtogram', 1E-15);
  static const attogram = WeightConverter._('attogram', 1E-18);

  static const ton = WeightConverter._('ton', 1E+6);
  static const tonUS = WeightConverter._('ton_us', 907184.74);
  static const tonUK = WeightConverter._('ton_uk', 1016046.9088);
  static const kiloton = WeightConverter._('kiloton', 1E+9);
  static const quintal = WeightConverter._('quintal', 1E+5);

  static const pound = WeightConverter._('pound', 453.59237);
  static const poundal = WeightConverter._('poundal', 14.086719565);
  static const ounce = WeightConverter._('ounce', 28.349523125);
  static const carat = WeightConverter._('carat', 0.2);
  static const grain = WeightConverter._('grain', 0.06479891);

  static const hundredWeightUS = WeightConverter._('hundredweight_us', 45359.237);
  static const hundredWeightUK = WeightConverter._('hundredweight_uk', 50802.34544);
  static const pennyweight = WeightConverter._('pennyweight', 1.55517384);

  static const quarterUS = WeightConverter._('quarter_us', 11339.80925);
  static const quarterUK = WeightConverter._('quarter_uk', 12700.58636);
  static const stoneUS = WeightConverter._('stone_us', 5669.904625);
  static const stoneUK = WeightConverter._('stone_uk', 6350.29318);

  static const dalton = WeightConverter._('dalton', 1.66053E-24);
  static const atomicMassUnit = WeightConverter._('atomic_mass_unit', 1.660540199E-24);
  static const plankMass = WeightConverter._('plank_mass', 0.0000217671);
  static const electronMass = WeightConverter._('electron_mass', 9.109389699E-28);
  static const muonMass = WeightConverter._('muon_mass', 1.8835327E-25);
  static const protonMass = WeightConverter._('proton_mass', 1.672623099E-24);
  static const neutronMass = WeightConverter._('neutron_mass', 1.6749286E-24);
  static const deuteronMass = WeightConverter._('deuteron_mass', 3.343585999E-24);

  static const earthMass = WeightConverter._('earth_mass', 5.976E+27);
  static const sunMass = WeightConverter._('sun_mass', 2E+33);

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

  /// Returns the [WeightConverter] for this [id] or null
  /// if there is no [WeightConverter] associated with this id.
  static WeightConverter? parse(String? id) => units.find(id);
}
