import '../converter.dart';
import '../util/extensions.dart';

// ignore_for_file: public_member_api_docs

const exanewton = ForceUnit.exanewton;
const petanewton = ForceUnit.petanewton;
const teranewton = ForceUnit.teranewton;
const giganewton = ForceUnit.giganewton;
const meganewton = ForceUnit.meganewton;
const kilonewton = ForceUnit.kilonewton;
const hectonewton = ForceUnit.hectonewton;
const dekanewton = ForceUnit.dekanewton;
const newton = ForceUnit.newton;
const decinewton = ForceUnit.decinewton;
const centinewton = ForceUnit.centinewton;
const millinewton = ForceUnit.millinewton;
const micronewton = ForceUnit.micronewton;
const nanonewton = ForceUnit.nanonewton;
const piconewton = ForceUnit.piconewton;
const femtonewton = ForceUnit.femtonewton;
const attonewton = ForceUnit.attonewton;

const tonForce = ForceUnit.tonForce;
const kipForce = ForceUnit.kipForce;
const kilogramForce = ForceUnit.kilogramForce;
const gramForce = ForceUnit.gramForce;
const poundForce = ForceUnit.poundForce;
const ounceForce = ForceUnit.ounceForce;

/// Converter for numerous [ForceUnit]s.
class ForceConverter extends RatioConverter {
  const ForceConverter._(String id, double ratio) : super(id, r: ratio);

  @override
  String get category => 'force';
}

/// Enum for numerous [ForceConverter]s.
class ForceUnit {
  const ForceUnit._();

  // Base Unit: newton

  static const exanewton = ForceConverter._('exanewton', 1E+18);
  static const petanewton = ForceConverter._('petanewton', 1E+15);
  static const teranewton = ForceConverter._('teranewton', 1E+12);
  static const giganewton = ForceConverter._('giganewton', 1E+9);
  static const meganewton = ForceConverter._('meganewton', 1E+6);
  static const kilonewton = ForceConverter._('kilonewton', 1E+3);
  static const hectonewton = ForceConverter._('hectonewton', 1E+2);
  static const dekanewton = ForceConverter._('dekanewton', 10);
  static const newton = ForceConverter._('newton', 1.0);
  static const decinewton = ForceConverter._('decinewton', 0.1);
  static const centinewton = ForceConverter._('centinewton', 1E-2);
  static const millinewton = ForceConverter._('millinewton', 1E-3);
  static const micronewton = ForceConverter._('micronewton', 1E-6);
  static const nanonewton = ForceConverter._('nanonewton', 1E-9);
  static const piconewton = ForceConverter._('piconewton', 1E-12);
  static const femtonewton = ForceConverter._('femtonewton', 1E-15);
  static const attonewton = ForceConverter._('attonewton', 1E-18);

  static const tonForce = ForceConverter._('ton_force', 9806.65);
  static const kipForce = ForceConverter._('kip_force', 4448.2216153);
  static const kilogramForce = ForceConverter._('kilogram_force', 9.80665);
  static const gramForce = ForceConverter._('gram_force', 0.00980665);
  static const poundForce = ForceConverter._('pound_force', 4.4482216153);
  static const ounceForce = ForceConverter._('ounce_force', 0.278013851);

  static const dyne = ForceConverter._('dyne', 1E-5);
  static const jouleMeter = ForceConverter._('joule_meter', 1);
  static const jouleCentimeter = ForceConverter._('joule_centimeter', 0.01);

  static const pond = ForceConverter._('pond', 0.00980665);
  static const kilopond = ForceConverter._('kilopond', 9.80665);

  static const common = [
    exanewton,
    petanewton,
    teranewton,
    giganewton,
    meganewton,
    kilonewton,
    hectonewton,
    dekanewton,
    newton,
    decinewton,
    centinewton,
    millinewton,
    micronewton,
    nanonewton,
    piconewton,
    femtonewton,
    attonewton,
    tonForce,
    kipForce,
    kilogramForce,
    gramForce,
    poundForce,
    ounceForce,
  ];

  static const units = [
    exanewton,
    petanewton,
    teranewton,
    giganewton,
    meganewton,
    kilonewton,
    hectonewton,
    dekanewton,
    newton,
    decinewton,
    centinewton,
    millinewton,
    micronewton,
    nanonewton,
    piconewton,
    femtonewton,
    attonewton,
    tonForce,
    kipForce,
    kilogramForce,
    gramForce,
    poundForce,
    ounceForce,
    dyne,
    jouleMeter,
    jouleCentimeter,
    pond,
    kilopond,
  ];

  /// Returns the [ForceConverter] for this [id] or null
  /// if there is no [ForceConverter] associated with this id.
  static ForceConverter? parse(String? id) => units.find(id);
}
