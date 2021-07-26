import '../converter.dart';
import '../util/extensions.dart';

// ignore_for_file: public_member_api_docs

const bit = StorageUnit.bit;
const byte = StorageUnit.byte;
const kilobit = StorageUnit.kilobit;
const kilobyte = StorageUnit.kilobyte;
const megabit = StorageUnit.megabit;
const megabyte = StorageUnit.megabyte;
const gigabit = StorageUnit.gigabit;
const gigabyte = StorageUnit.gigabyte;
const terabit = StorageUnit.terabit;
const terabyte = StorageUnit.terabyte;
const petabit = StorageUnit.petabit;
const petabyte = StorageUnit.petabyte;
const exabit = StorageUnit.exabit;
const exabyte = StorageUnit.exabyte;

const nibble = StorageUnit.nibble;
const character = StorageUnit.character;
const word = StorageUnit.word;
const block = StorageUnit.block;

const cd74Minute = StorageUnit.cd74Minute;
const cd80Minute = StorageUnit.cd80Minute;

const dvd = StorageUnit.dvd;

/// Converter for numerous [StorageUnit]s.
class StorageConverter extends RatioConverter {
  const StorageConverter._(String id, double ratio) : super(id, r: ratio);

  @override
  String get category => 'storage';
}

/// An enum for numerous [StorageConverter]s.
class StorageUnit {
  const StorageUnit._();

  // Base Unit: Kilobit

  // Common
  static const bit = StorageConverter._('bit', 1.0 / 1024.0);
  static const nibble = StorageConverter._('nibble', 4.0 / 1024.0);
  static const byte = StorageConverter._('byte', 8.0 / 1024.0);
  static const character = StorageConverter._('character', 8.0 / 1024.0);
  static const word = StorageConverter._('word', 16.0 / 1024.0);
  static const block = StorageConverter._('block', 4.0);
  static const kilobit = StorageConverter._('kilobit', 1.0);
  static const kilobyte = StorageConverter._('kilobyte', 8.0);
  static const megabit = StorageConverter._('megabit', 1024.0);
  static const megabyte = StorageConverter._('megabyte', 8192.0);
  static const gigabit = StorageConverter._('gigabit', 1048576.0);
  static const gigabyte = StorageConverter._('gigabyte', 8388608.0);
  static const terabit = StorageConverter._('terabit', 1073741824.0);
  static const terabyte = StorageConverter._('terabyte', 8589934592.0);
  static const petabit = StorageConverter._('petabit', 1099511627776.0);
  static const petabyte = StorageConverter._('petabyte', 8796093022208.0);
  static const exabit = StorageConverter._('exabit', 1125899906842629);
  static const exabyte = StorageConverter._('exabyte', 9007199254741028);

  static const quadruple_word = StorageConverter._('quadruple_word', 64.0);
  static const mapmWord = StorageConverter._('mapm_word', 32.0);

  static const floppyDisk35DD = StorageConverter._('floppy_disk_35_dd', 5694.0);
  static const floppyDisk35HD = StorageConverter._('floppy_disk_35_hd', 11388.0);
  static const floppyDisk35ED = StorageConverter._('floppy_disk_35_ed', 22776.0);
  static const floppyDisk525DD = StorageConverter._('floppy_disk_525_dd', 2847.0);
  static const floppyDisk525HD = StorageConverter._('floppy_disk_525_hd', 9484.0);

  static const cd74Minute = StorageConverter._('cd_74_minute', 5320768);
  static const cd80Minute = StorageConverter._('cd_80_minute', 5752181.6172);

  static const dvd = StorageConverter._('dvd', 39426457.6);
  static const dvd2Layer = StorageConverter._('dvd_2_layer', 71303168);
  static const dvd2Side = StorageConverter._('dvd_2_side', 78852915.2);
  static const dvd2Layer2Side = StorageConverter._('dvd_2_layer_2_side', 142606336);

  static const zip100 = StorageConverter._('zip_100', 784624.0);
  static const zip250 = StorageConverter._('zip_250', 1961560.0);

  static const jaz1GB = StorageConverter._('jaz_1gb', 8388608.0);
  static const jaz2GB = StorageConverter._('jaz_2gb', 16777216.0);

  static const common = [
    bit,
    byte,
    kilobit,
    kilobyte,
    megabit,
    megabyte,
    gigabit,
    gigabyte,
    terabit,
    terabyte,
    petabit,
    petabyte,
    exabit,
    exabyte,
    nibble,
    character,
    word,
    block,
    cd74Minute,
    cd80Minute,
    dvd,
    dvd2Layer,
    dvd2Side,
    dvd2Layer2Side,
  ];

  static const units = [
    bit,
    byte,
    kilobit,
    kilobyte,
    megabit,
    megabyte,
    gigabit,
    gigabyte,
    terabit,
    terabyte,
    petabit,
    petabyte,
    exabit,
    exabyte,
    nibble,
    character,
    word,
    quadruple_word,
    mapmWord,
    floppyDisk35DD,
    floppyDisk35HD,
    floppyDisk35ED,
    floppyDisk525DD,
    floppyDisk525HD,
    cd74Minute,
    cd80Minute,
    dvd,
    dvd2Layer,
    dvd2Side,
    dvd2Layer2Side,
    zip100,
    zip250,
    jaz1GB,
    jaz2GB,
  ];

  /// Returns the [StorageConverter] for this [id] or null
  /// if there is no [StorageConverter] associated with this id.
  static StorageConverter? parse(String? id) => units.find(id);
}
