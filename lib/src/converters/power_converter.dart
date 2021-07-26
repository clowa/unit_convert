import '../converter.dart';
import '../util/extensions.dart';

// ignore_for_file: public_member_api_docs

const exawatt = PowerUnit.exawatt;
const petawatt = PowerUnit.petawatt;
const terawatt = PowerUnit.terawatt;
const gigawatt = PowerUnit.gigawatt;
const megawatt = PowerUnit.megawatt;
const kilowatt = PowerUnit.kilowatt;
const hectowatt = PowerUnit.hectowatt;
const dekawatt = PowerUnit.dekawatt;
const watt = PowerUnit.watt;
const deciwatt = PowerUnit.deciwatt;
const centiwatt = PowerUnit.centiwatt;
const milliwatt = PowerUnit.milliwatt;
const picowatt = PowerUnit.picowatt;
const femtowatt = PowerUnit.femtowatt;
const attowatt = PowerUnit.attowatt;

/// Converter for numerous [PowerUnit]s.
class PowerConverter extends RatioConverter {
  const PowerConverter._(String id, double ratio) : super(id, r: ratio);

  @override
  String get category => 'power';
}

/// An enum for numerous [PowerConverter]s.
class PowerUnit {
  const PowerUnit._();

  // Base Unit: Watt

  static const exawatt = PowerConverter._('exawatt', 1E+18);
  static const petawatt = PowerConverter._('petawatt', 1E+15);
  static const terawatt = PowerConverter._('terawatt', 1E+12);
  static const gigawatt = PowerConverter._('gigawatt', 1E+9);
  static const megawatt = PowerConverter._('megawatt', 1E+6);
  static const kilowatt = PowerConverter._('kilowatt', 1E+3);
  static const hectowatt = PowerConverter._('hectowatt', 100.0);
  static const dekawatt = PowerConverter._('dekawatt', 10.0);
  static const watt = PowerConverter._('watt', 1.0);
  static const deciwatt = PowerConverter._('deciwatt', 0.1);
  static const centiwatt = PowerConverter._('centiwatt', 0.01);
  static const milliwatt = PowerConverter._('milliwatt', 1E-3);
  static const microwatt = PowerConverter._('microwatt', 1E-6);
  static const nanowatt = PowerConverter._('nanowatt', 1E-9);
  static const picowatt = PowerConverter._('picowatt', 1E-12);
  static const femtowatt = PowerConverter._('femtowatt', 1E-15);
  static const attowatt = PowerConverter._('attowatt', 1E-18);

  static const horsepower = PowerConverter._('horsepower', 745.69987158);
  static const horsepowerMetric = PowerConverter._('horsepower_metric', 735.49875);
  static const horsepowerElectric = PowerConverter._('horsepower_electric', 735.49875);
  static const pferdestarke = PowerConverter._('pferdestarke', 735.49875);

  static const kiloCaloriesPerHour = PowerConverter._('kcal_hour', 1.1622222222);
  static const kiloCaloriesPerMinute = PowerConverter._('kcal_minute', 69.733333333);
  static const kiloCaloriesPerSecond = PowerConverter._('kcal_second', 4184);
  static const caloriesPerHour = PowerConverter._('cal_hour', 0.0011622222);
  static const caloriesPerMinute = PowerConverter._('cal_minute', 0.0697333333);
  static const caloriesPerSecond = PowerConverter._('cal_second', 4.184);

  static const common = [
    exawatt,
    petawatt,
    terawatt,
    gigawatt,
    megawatt,
    kilowatt,
    hectowatt,
    dekawatt,
    watt,
    deciwatt,
    centiwatt,
    milliwatt,
    microwatt,
    nanowatt,
    picowatt,
    femtowatt,
    attowatt,
    horsepower,
    horsepowerMetric,
    horsepowerElectric,
    pferdestarke,
    kiloCaloriesPerHour,
    kiloCaloriesPerMinute,
    kiloCaloriesPerSecond,
    caloriesPerHour,
    caloriesPerMinute,
    caloriesPerSecond,
  ];

  static const units = [
    exawatt,
    petawatt,
    terawatt,
    gigawatt,
    megawatt,
    kilowatt,
    hectowatt,
    dekawatt,
    watt,
    deciwatt,
    centiwatt,
    milliwatt,
    microwatt,
    nanowatt,
    picowatt,
    femtowatt,
    attowatt,
    horsepower,
    horsepowerMetric,
    horsepowerElectric,
    pferdestarke,
    kiloCaloriesPerHour,
    kiloCaloriesPerMinute,
    kiloCaloriesPerSecond,
    caloriesPerHour,
    caloriesPerMinute,
    caloriesPerSecond,
  ];

  /// Returns the [PowerConverter] for this [id] or null
  /// if there is no [PowerConverter] associated with this id.
  static PowerConverter? parse(String? id) => units.find(id);
}
