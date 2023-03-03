import 'package:flutter/material.dart';

const _libreFranklin = 'Libre_Franklin';
const _merriweather = 'Merriweather';

// Libre_Franklin TextStyles
const _libreFranklinRegular = TextStyle(
  fontFamily: _libreFranklin,
  fontWeight: FontWeight.normal,
);
const _libreFranklinBold = TextStyle(
  fontFamily: _libreFranklin,
  fontWeight: FontWeight.bold,
);
const _libreFranklinLight = TextStyle(
  fontFamily: _libreFranklin,
  fontWeight: FontWeight.w300,
);
const _libreFranklinMedium = TextStyle(
  fontFamily: _libreFranklin,
  fontWeight: FontWeight.w500,
);

// Merriweather TextStyles
const _merriweatherRegular = TextStyle(
  fontFamily: _merriweather,
  fontWeight: FontWeight.normal,
);
const _merriweatherRegularItalic = TextStyle(
  fontFamily: _merriweather,
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.italic,
);
const _merriweatherBlackItalic = TextStyle(
  fontFamily: _merriweather,
  fontWeight: FontWeight.w900,
  fontStyle: FontStyle.italic,
);
const _merriweatherBoldItalic = TextStyle(
  fontFamily: _merriweather,
  fontWeight: FontWeight.bold,
  fontStyle: FontStyle.italic,
);
const _merriweatherMedium = TextStyle(
  fontFamily: _merriweather,
  fontWeight: FontWeight.w500,
);

final _appTextTheme = TextTheme(
  headline1: _merriweatherBlackItalic.copyWith(fontSize: 96),
  headline2: _libreFranklinLight.copyWith(fontSize: 60),
  headline3: _merriweatherBlackItalic.copyWith(fontSize: 48),
  headline4: _libreFranklinRegular.copyWith(fontSize: 34),
  headline5: _libreFranklinRegular.copyWith(fontSize: 24),
  headline6: _merriweatherBoldItalic.copyWith(fontSize: 20),
  subtitle1: _libreFranklinMedium.copyWith(fontSize: 16),
  subtitle2: _merriweatherMedium.copyWith(fontSize: 14),
  bodyText1: _merriweatherRegular.copyWith(fontSize: 16),
  bodyText2: _libreFranklinRegular.copyWith(fontSize: 14),
  button: _libreFranklinBold.copyWith(fontSize: 14),
  caption: _merriweatherRegularItalic.copyWith(fontSize: 12),
  overline: _libreFranklinBold.copyWith(fontSize: 10),
);

final appLightTextTheme = _appTextTheme.apply(
  displayColor: Colors.black,
  bodyColor: Colors.black,
);

final appDarkTextTheme = _appTextTheme.apply(
  displayColor: Colors.white,
  bodyColor: Colors.white,
);
