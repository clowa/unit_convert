import '../converter.dart';
import '../util/extensions.dart';

// ignore_for_file: public_member_api_docs

const picosecond = TimeUnit.picosecond;
const nanosecond = TimeUnit.nanosecond;
const microsecond = TimeUnit.microsecond;
const millisecond = TimeUnit.millisecond;
const second = TimeUnit.second;
const minute = TimeUnit.minute;
const hour = TimeUnit.hour;
const day = TimeUnit.day;
const week = TimeUnit.week;
const month = TimeUnit.month;
const year = TimeUnit.year;
const decade = TimeUnit.decade;
const century = TimeUnit.century;
const millenium = TimeUnit.millenium;

const fortnight = TimeUnit.fortnight;

/// Converter for numerous [TimeUnit]s.
class TimeConverter extends RatioConverter {
  const TimeConverter._(String id, double ratio) : super(id, r: ratio);

  @override
  String get category => 'time';
}

/// An enum for numerous [TimeConverter]s.
class TimeUnit {
  const TimeUnit._();

  // Base Unit: Second

  // Common
  static const attosecond = TimeConverter._('attosecond', 1E-18);
  static const femtosecond = TimeConverter._('femtosecond', 1E-15);
  static const picosecond = TimeConverter._('picosecond', 1E-12);
  static const nanosecond = TimeConverter._('nanosecond', 1E-9);
  static const microsecond = TimeConverter._('microsecond', 1E-6);
  static const millisecond = TimeConverter._('millisecond', 1E-3);
  static const second = TimeConverter._('second', 1.0);
  static const minute = TimeConverter._('minute', 60.0);
  static const hour = TimeConverter._('hour', 3600.0);
  static const day = TimeConverter._('day', 86400.0);
  static const week = TimeConverter._('week', 604800.0);
  static const month = TimeConverter._('month', 2628000.0);
  static const year = TimeConverter._('year', 31536000.0);
  static const decade = TimeConverter._('decade', 315360000.0);
  static const century = TimeConverter._('century', 3153600000.0);
  static const millenium = TimeConverter._('millenium', 31536000000.0);

  static const fortnight = TimeConverter._('fortnight', 1209600);
  static const septennial = TimeConverter._('septennial', 220752000);
  static const octennial = TimeConverter._('octennial', 252288000);
  static const novennial = TimeConverter._('novennial', 283824000);
  static const quindecinnal = TimeConverter._('quindecinnal', 473040000);
  static const quinquennial = TimeConverter._('quinquennial', 157680000);

  static const leapYear = TimeConverter._('leap_year', 31622400);
  static const yearTropical = TimeConverter._('year_tropical', 31556930);
  static const yearJulian = TimeConverter._('year_julian', 31557600);

  static const secondSideral = TimeConverter._('second_sideral', 0.9972695602);
  static const minuteSideral = TimeConverter._('minute_sideral', 59.836173611);
  static const hourSideral = TimeConverter._('hour_sideral', 3590.1704167);
  static const daySideral = TimeConverter._('day_sideral', 86164.09);
  static const yearSideral = TimeConverter._('year_sideral', 31558149.54);

  static const monthSynodic = TimeConverter._('month_synodic', 2551443.84);

  static const shake = TimeConverter._('shake', 1E-8);
  static const plankTime = TimeConverter._('plank_time', 5.390559999E-44);

  static const common = [
    millenium,
    century,
    decade,
    year,
    month,
    week,
    day,
    hour,
    second,
    millisecond,
    microsecond,
    nanosecond,
    picosecond,
    femtosecond,
    attosecond,
    fortnight,
  ];

  static const units = [
    millenium,
    century,
    decade,
    year,
    month,
    week,
    day,
    hour,
    second,
    millisecond,
    microsecond,
    nanosecond,
    picosecond,
    femtosecond,
    attosecond,
    fortnight,
    septennial,
    octennial,
    novennial,
    quindecinnal,
    quinquennial,
    leapYear,
    yearTropical,
    yearJulian,
    yearSideral,
    daySideral,
    hourSideral,
    minuteSideral,
    secondSideral,
    monthSynodic,
    shake,
    plankTime,
  ];

  /// Returns the [TimeConverter] for this [id] or null
  /// if there is no [TimeConverter] associated with this id.
  static TimeConverter? parse(String? id) => units.find(id);
}
