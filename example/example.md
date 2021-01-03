# Usage

### Conversions

You can use the `convert` function to convert between most units:

~~~dart
import 'package:unit_convert/unit_convert.dart';

//                     (from)    (to)
double result = convert(celsius, fahrenheit, 100);
~~~

or using the `to` method on each unit:

~~~dart
double result = celsius.to(fahrenheit, 100);
~~~

or shorthand using function invocation:

~~~dart
double result = celsius(fahrenheit, 100);
~~~

or using `from` for more clarity:

~~~dart
double result = from(celsius).to(fahrenheit, 100);
~~~

The most commonly used units are already imported by default. If you need to convert between less commonly used units, please use the enum of the unit category:

~~~dart
double result = convert(LengthUnit.astronomicalUnit, LengthUnit.lightYear, 100000);
double result = TimeUnit.leapYear.to(TimeUnit.quindecinnal, 10);
double result = from(EnergyUnit.kilocalorie).to(EnergyUnit.wattHour, 1000);
~~~