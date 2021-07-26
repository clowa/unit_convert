import '../converter.dart';
import '../util/extensions.dart';

// ignore_for_file: public_member_api_docs

const gigajoule = EnergyUnit.gigajoule;
const megajoule = EnergyUnit.megajoule;
const kilojoule = EnergyUnit.kilojoule;
const joule = EnergyUnit.joule;
const millijoule = EnergyUnit.millijoule;
const microjoule = EnergyUnit.microjoule;
const picojoule = EnergyUnit.picojoule;
const femtojoule = EnergyUnit.femtojoule;
const attojoule = EnergyUnit.attojoule;

const gigawattHour = EnergyUnit.gigawattHour;
const megawattHour = EnergyUnit.megawattHour;
const kilowattHour = EnergyUnit.kilowattHour;
const wattHour = EnergyUnit.wattHour;

const megaelectronVolt = EnergyUnit.megaelectronVolt;
const kiloelectronVolt = EnergyUnit.kiloelectronVolt;
const electronVolt = EnergyUnit.electronVolt;

const kilocalorie = EnergyUnit.kilocalorie;
const calorie = EnergyUnit.calorie;

/// Converter for numerous [EnergyUnit]s.
class EnergyConverter extends RatioConverter {
  const EnergyConverter._(String id, double ratio) : super(id, r: ratio);

  @override
  String get category => 'energy';
}

/// Enum for numerous [EnergyConverter]s.
class EnergyUnit {
  const EnergyUnit._();

  // Base Unit: Joule

  static const terajoule = EnergyConverter._('terajoule', 1E+12);
  static const gigajoule = EnergyConverter._('gigajoule', 1E+9);
  static const megajoule = EnergyConverter._('megajoule', 1E+6);
  static const kilojoule = EnergyConverter._('kilojoule', 1E+3);
  static const joule = EnergyConverter._('joule', 1.0);
  static const millijoule = EnergyConverter._('millijoule', 1E-3);
  static const microjoule = EnergyConverter._('microjoule', 1E-6);
  static const nanojoule = EnergyConverter._('nanojoule', 1E-9);
  static const picojoule = EnergyConverter._('picojoule', 1E-12);
  static const femtojoule = EnergyConverter._('femtojoule', 1E-15);
  static const attojoule = EnergyConverter._('attojoule', 1E-18);

  static const gigawattHour = EnergyConverter._('gigawatt_hour', 3600000000000);
  static const megawattHour = EnergyConverter._('megawatt_hour', 3600000000);
  static const kilowattHour = EnergyConverter._('kilowatt_hour', 3600000);
  static const wattHour = EnergyConverter._('watt_hour', 3600);

  static const kilowattSecond = EnergyConverter._('kilowatt_second', 1000);
  static const wattSecond = EnergyConverter._('watt_second', 1);

  static const megaelectronVolt = EnergyConverter._('megaelectron_volt', 1.60217733E-13);
  static const kiloelectronVolt = EnergyConverter._('kiloelectron_volt', 1.60217733E-16);
  static const electronVolt = EnergyConverter._('electron_volt', 1.60217733E-19);

  static const horsepowerHour = EnergyConverter._('horsepower_hour', 2647795.5);

  static const kilocalorie = EnergyConverter._('kilocalorie', 4184);
  static const calorie = EnergyConverter._('calorie', 4.184);

  static const gigaton = EnergyConverter._('gigaton', 4184000000000000000);
  static const megaton = EnergyConverter._('megaton', 4184000000000000);
  static const kiloton = EnergyConverter._('kiloton', 4184000000000);
  static const ton = EnergyConverter._('ton', 4184000000);

  static const common = [
    gigajoule,
    megajoule,
    kilojoule,
    joule,
    millijoule,
    microjoule,
    picojoule,
    femtojoule,
    attojoule,
    gigawattHour,
    megawattHour,
    kilowattHour,
    wattHour,
    horsepowerHour,
    kilocalorie,
    calorie,
  ];

  static const units = [
    gigajoule,
    megajoule,
    kilojoule,
    joule,
    millijoule,
    microjoule,
    picojoule,
    femtojoule,
    attojoule,
    gigawattHour,
    megawattHour,
    kilowattHour,
    wattHour,
    megaelectronVolt,
    kiloelectronVolt,
    electronVolt,
    horsepowerHour,
    kilocalorie,
    calorie,
    gigaton,
    megaton,
    kiloton,
    ton,
  ];

  /// Returns the [EnergyConverter] for this [id] or null
  /// if there is no [EnergyConverter] associated with this id.
  static EnergyConverter? parse(String? id) => units.find(id);
}
