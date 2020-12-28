import '../converter.dart';

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

class TimeConverter extends RatioConverter {
  const TimeConverter._(String id, String symbol, double ratio)
      : super(id, s: symbol, r: ratio);

  @override
  String get category => 'time';
}

class TimeUnit {
  const TimeUnit._();

  // Base Unit: Second

  // Common
  static const attosecond = TimeConverter._('attosecond', 'as', 1E-18);
  static const femtosecond = TimeConverter._('femtosecond', 'fs', 1E-15);
  static const picosecond = TimeConverter._('picosecond', 'ps', 1E-12);
  static const nanosecond = TimeConverter._('nanosecond', 'ns', 1E-9);
  static const microsecond = TimeConverter._('microsecond', 'µs', 1E-6);
  static const millisecond = TimeConverter._('millisecond', 'ms', 1E-3);
  static const second = TimeConverter._('second', 's', 1.0);
  static const minute = TimeConverter._('minute', 'm', 60.0);
  static const hour = TimeConverter._('hour', 'h', 3600.0);
  static const day = TimeConverter._('day', 'd', 86400.0);
  static const week = TimeConverter._('week', 'w', 604800.0);
  static const month = TimeConverter._('month', 'm', 2628000.0);
  static const year = TimeConverter._('year', 'y', 31536000.0);
  static const decade = TimeConverter._('decade', null, 315360000.0);
  static const century = TimeConverter._('century', null, 3153600000.0);
  static const millenium = TimeConverter._('millenium', null, 31536000000.0);

  static const fortnight = TimeConverter._('fortnight', null, 1209600);
  static const septennial = TimeConverter._('septennial', null, 220752000);
  static const octennial = TimeConverter._('octennial', null, 252288000);
  static const novennial = TimeConverter._('novennial', null, 283824000);
  static const quindecinnal = TimeConverter._('quindecinnal', null, 473040000);
  static const quinquennial = TimeConverter._('quinquennial', null, 157680000);

  static const leapYear = TimeConverter._('leap_year', null, 31622400);
  static const yearTropical = TimeConverter._('year_tropical', null, 31556930);
  static const yearJulian = TimeConverter._('year_julian', null, 31557600);

  static const secondSideral = TimeConverter._('second_sideral', null, 0.9972695602);
  static const minuteSideral = TimeConverter._('minute_sideral', null, 59.836173611);
  static const hourSideral = TimeConverter._('hour_sideral', null, 3590.1704167);
  static const daySideral = TimeConverter._('day_sideral', null, 86164.09);
  static const yearSideral = TimeConverter._('year_sideral', null, 31558149.54);

  static const monthSynodic = TimeConverter._('month_synodic', null, 2551443.84);

  static const shake = TimeConverter._('shake', null, 1E-8);
  static const plankTime = TimeConverter._('plank_time', null, 5.390559999E-44);

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
}
