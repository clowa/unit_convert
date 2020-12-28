import '../converter.dart';

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

class PowerConverter extends RatioConverter {
  const PowerConverter._(String id, String symbol, double ratio)
      : super(id, s: symbol, r: ratio);

  @override
  String get category => 'category';
}

class PowerUnit {
  const PowerUnit._();

  // Base Unit: Watt

  static const exawatt = PowerConverter._('exawatt', 'EW', 1E+18);
  static const petawatt = PowerConverter._('petawatt', 'PW', 1E+15);
  static const terawatt = PowerConverter._('terawatt', 'TW', 1E+12);
  static const gigawatt = PowerConverter._('gigawatt', 'GW', 1E+9);
  static const megawatt = PowerConverter._('megawatt', 'GW', 1E+6);
  static const kilowatt = PowerConverter._('kilowatt', 'GW', 1E+3);
  static const hectowatt = PowerConverter._('hectowatt', 'GW', 100.0);
  static const dekawatt = PowerConverter._('dekawatt', 'GW', 10.0);
  static const watt = PowerConverter._('watt', 'W', 1.0);
  static const deciwatt = PowerConverter._('deciwatt', 'W', 0.1);
  static const centiwatt = PowerConverter._('centiwatt', 'W', 0.01);
  static const milliwatt = PowerConverter._('milliwatt', 'W', 1E-3);
  static const microwatt = PowerConverter._('microwatt', 'W', 1E-6);
  static const nanowatt = PowerConverter._('nanowatt', 'W', 1E-9);
  static const picowatt = PowerConverter._('picowatt', 'W', 1E-12);
  static const femtowatt = PowerConverter._('femtowatt', 'W', 1E-15);
  static const attowatt = PowerConverter._('attowatt', 'W', 1E-18);

  static const horsepower = PowerConverter._('horsepower', 'hp', 745.69987158);
  static const horsepowerMetric = PowerConverter._('horsepower_metric', 'hp', 735.49875);
  static const horsepowerElectric =
      PowerConverter._('horsepower_electric', 'hp', 735.49875);
  static const pferdestarke = PowerConverter._('pferdestarke', 'PS', 735.49875);

  static const kiloCaloriesPerHour =
      PowerConverter._('kcal_hour', 'kcal/h', 1.1622222222);
  static const kiloCaloriesPerMinute =
      PowerConverter._('kcal_minute', 'kcal/m', 69.733333333);
  static const kiloCaloriesPerSecond = PowerConverter._('kcal_second', 'kcal/s', 4184);
  static const caloriesPerHour = PowerConverter._('cal_hour', 'cal/h', 0.0011622222);
  static const caloriesPerMinute = PowerConverter._('cal_minute', 'cal/m', 0.0697333333);
  static const caloriesPerSecond = PowerConverter._('cal_second', 'cal/s', 4.184);

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
}
