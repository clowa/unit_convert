import '../converter.dart';

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

class StorageConverter extends RatioConverter {
  const StorageConverter._(String id, String symbol, double ratio)
      : super(id, s: symbol, r: ratio);

  @override
  String get category => 'storage';
}

class StorageUnit {
  const StorageUnit._();
  
  // Base Unit: Kilobit

  // Common
  static const bit = StorageConverter._('bit', 'b', 1.0 / 1024.0);
  static const nibble = StorageConverter._('nibble', null, 4.0 / 1024.0);
  static const byte = StorageConverter._('byte', 'B', 8.0 / 1024.0);
  static const character = StorageConverter._('character', null, 8.0 / 1024.0);
  static const word = StorageConverter._('word', null, 16.0 / 1024.0);
  static const block = StorageConverter._('block', null, 4.0);
  static const kilobit = StorageConverter._('kilobit', 'kb', 1.0);
  static const kilobyte = StorageConverter._('kilobyte', 'kB', 8.0);
  static const megabit = StorageConverter._('megabit', 'mb', 1024.0);
  static const megabyte = StorageConverter._('megabyte', 'mB', 8192.0);
  static const gigabit = StorageConverter._('gigabit', 'gb', 1048576.0);
  static const gigabyte = StorageConverter._('gigabyte', 'gB', 8388608.0);
  static const terabit = StorageConverter._('terabit', 'tb', 1073741824.0);
  static const terabyte = StorageConverter._('terabyte', 'tB', 8589934592.0);
  static const petabit = StorageConverter._('petabit', 'pb', 1099511627776.0);
  static const petabyte = StorageConverter._('petabyte', 'tB', 8796093022208.0);
  static const exabit = StorageConverter._('exabit', 'EB', 1125899906842629);
  static const exabyte = StorageConverter._('exabyte', 'EB', 9007199254741028);

  static const quadruple_word = StorageConverter._('quadruple_word', null, 64.0);
  static const mapmWord = StorageConverter._('mapm_word', null, 32.0);

  static const floppyDisk35DD = StorageConverter._('floppy_disk_35_dd', null, 5694.0);
  static const floppyDisk35HD = StorageConverter._('floppy_disk_35_hd', null, 11388.0);
  static const floppyDisk35ED = StorageConverter._('floppy_disk_35_ed', null, 22776.0);
  static const floppyDisk525DD = StorageConverter._('floppy_disk_525_dd', null, 2847.0);
  static const floppyDisk525HD = StorageConverter._('floppy_disk_525_hd', null, 9484.0);

  static const cd74Minute = StorageConverter._('cd_74_minute', null, 5320768);
  static const cd80Minute = StorageConverter._('cd_80_minute', null, 5752181.6172);

  static const dvd = StorageConverter._('dvd', null, 39426457.6);
  static const dvd2Layer = StorageConverter._('dvd_2_layer', null, 71303168);
  static const dvd2Side = StorageConverter._('dvd_2_side', null, 78852915.2);
  static const dvd2Layer2Side = StorageConverter._('dvd_2_layer_2_side', null, 142606336);

  static const zip100 = StorageConverter._('zip_100', null, 784624.0);
  static const zip250 = StorageConverter._('zip_250', null, 1961560.0);

  static const jaz1GB = StorageConverter._('jaz_1gb', null, 8388608.0);
  static const jaz2GB = StorageConverter._('jaz_2gb', null, 16777216.0);

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
}
