import 'package:unit_convert/unit_convert.dart';

final r1 = convert(celsius, fahrenheit, 100);

final r2 = celsius.to(fahrenheit, 100);

final r3 = celsius(fahrenheit, 100);

final r4 = from(celsius).to(fahrenheit, 100);

final r5 = convert(LengthUnit.astronomicalUnit, LengthUnit.lightYear, 100000);

final r6 = TimeUnit.leapYear.to(TimeUnit.quindecinnal, 10);

final r7 = from(EnergyUnit.kilocalorie).to(EnergyUnit.wattHour, 1000);