# Unit Convert

A Dart unit converter to convert between numerous units easily.

# Installing

Add it to your `pubspec.yaml` file:
```yaml
dependencies:
  unit_convert: ^0.1.3
```
Install packages from the command line
```
flutter packages get
```

If you like this package, consider supporting it by giving it a star on [GitHub](https://github.com/bnxm/unit_convert) and a like on [pub.dev](https://pub.dev/packages/unit_convert) :heart:

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

## Available Units

The following unit categories are available:

| Category            | Examples Units                         |
| :------------------ | :------------------------------------- |
| `AngleUnit`         | `degree`, `radian`, `grad`, `minute`   |
| `AreaUnit`          | `squareMeter`, `squareMile`, `hectare` |
| `EnergyUnit`        | `joule`, `wattHour`, `calorie`         |
| `ForceUnit`         | `newton`, `poundForce`, `dyne`         |
| `LengthUnit`        | `kilometer`, `mile`, `lightYear`       |
| `NumberUnit`        | `binary`, `hexadecimal`, `base-4`      |
| `PowerUnit`         | `watt`, `horsepower`, `caloriesPerHour`|
| `PressureUnit`      | `bar`, `psi`, `pascal`, `hectopascal`  |
| `SpeedUnit`         | `kilometerPerHour`, `yardPerMinute`    |
| `StorageUnit`       | `byte`, `kilobit`, `terabyte`, `dvd`   |
| `TemperatureUnit`   | `celsius`, `kelvin`, `fahrenheit`      |
| `TimeUnit`          | `day`, `millenium`, `plankTime`        |
| `VolumeUnit`        | `gallon`, `barrel`, `milliliter`       |
| `WeightUnit`        | `pound`, `ton`, `kilogram`, `ounce`    |

## Localization

Each unit has a `name` and a `symbol` associated with it. You can set or get the locale for `name` and `symbol` using:

~~~dart
Converter.locale = 'en';
~~~

Currently supported languages are:

| Language        | Code    |
| :-------------- | :------ |
| `English`       | `en_GB` |
| `German`        | `de_DE` |

## Persistence

Each unit has a unique `id` that you can use for persistence to local storage. You can then call `parse` on the unit enum to retrieve again the correct converter.

~~~dart
final id = TemperatureUnit.celsius.id;

final celsius = TemperatureUnit.parse('celsius');
~~~