import 'package:flutter/material.dart';
import 'package:taski_challenger_app/src/config/ds/tokens/globals/shapes.dart';

class AppRadius {
  const AppRadius._();

  static AppBorderSide get topLeft => AppBorderSide(_SidesFlag(1, 0, 0, 0));
  static AppBorderSide get topRight => AppBorderSide(_SidesFlag(0, 1, 0, 0));
  static AppBorderSide get bottomLeft => AppBorderSide(_SidesFlag(0, 0, 1, 0));
  static AppBorderSide get bottomRight => AppBorderSide(_SidesFlag(0, 0, 0, 1));
  static AppBorderSide get all => AppBorderSide(_SidesFlag(1, 1, 1, 1));
  }

class AppBorderSide {
  _SidesFlag sidesFlag;

  AppBorderSide(this.sidesFlag);

  BorderRadius get medium {
    return _dimensionSize(sidesFlag, _FactorHelper.medium);
  }

  BorderRadius get large {
    return _dimensionSize(sidesFlag, _FactorHelper.large);
  }

  BorderRadius _dimensionSize(_SidesFlag sidesFlag, double factor) {
    return BorderRadius.only(
      topLeft: Radius.circular(sidesFlag.topLeft * factor),
      topRight: Radius.circular(sidesFlag.topRight * factor),
      bottomLeft: Radius.circular(sidesFlag.bottomLeft * factor),
      bottomRight: Radius.circular(sidesFlag.bottomRight * factor),
    );
  }
}

class _SidesFlag {
  double topLeft = 0;
  double topRight = 0;
  double bottomLeft = 0;
  double bottomRight = 0;

  _SidesFlag(this.topLeft, this.topRight, this.bottomLeft, this.bottomRight);
}

class _FactorHelper {
  static double medium = Shapes.border.radiusMedium;
  static double large = Shapes.border.radiusLarge;
}