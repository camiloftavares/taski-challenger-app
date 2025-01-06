import 'package:flutter/material.dart';
import 'package:taski_challenger_app/src/ds/tokens/globals/shapes.dart';

class AppSpacing {
  const AppSpacing._();

  static const double _minimumValue = 8.0;

  static AppSpacerSide get left => AppSpacerSide(_minimumValue, _SidesFlag(1, 0, 0, 0));
  static AppSpacerSide get top => AppSpacerSide(_minimumValue, _SidesFlag(0, 1, 0, 0));
  static AppSpacerSide get right => AppSpacerSide(_minimumValue, _SidesFlag(0, 0, 1, 0));
  static AppSpacerSide get bottom => AppSpacerSide(_minimumValue, _SidesFlag(0, 0, 0, 1));
  static AppSpacerSide get all => AppSpacerSide(_minimumValue, _SidesFlag(0, 0, 0, 1));
  static AppSpacerSide get horizontal => AppSpacerSide(_minimumValue, _SidesFlag(1, 0, 1, 0));
  static AppSpacerSide get vertical => AppSpacerSide(_minimumValue, _SidesFlag(0, 1, 0, 1));
}

class AppSpacerSide {
  double spacer;

  _SidesFlag sidesFlag;

  AppSpacerSide(this.spacer, this.sidesFlag);

  EdgeInsets get none {
    return EdgeInsets.zero;
  }

  EdgeInsets get xsm {
    return _dimensionSize(spacer, sidesFlag, _FactorHelper.xsm);
  }

  EdgeInsets get sm {
    return _dimensionSize(spacer, sidesFlag, _FactorHelper.sm);
  }

  EdgeInsets get md {
    return _dimensionSize(spacer, sidesFlag, _FactorHelper.md);
  }

  EdgeInsets get xmd {
    return _dimensionSize(spacer, sidesFlag, _FactorHelper.xmd);
  }

  EdgeInsets get lg {
    return _dimensionSize(spacer, sidesFlag, _FactorHelper.lg);
  }

  EdgeInsets _dimensionSize(double spacer, _SidesFlag sidesFlag, double factor) {
    return EdgeInsets.only(
      left: sidesFlag.leftFlag * spacer * factor,
      top: sidesFlag.topFlag * spacer * factor,
      right: sidesFlag.rightFlag * spacer * factor,
      bottom: sidesFlag.bottomFlag * spacer * factor,
    );
  }
}

class _SidesFlag {
  double leftFlag = 0;
  double topFlag = 0;
  double rightFlag = 0;
  double bottomFlag = 0;

  _SidesFlag(this.leftFlag, this.topFlag, this.rightFlag, this.bottomFlag);
}

class _FactorHelper {
  static double xsm = Shapes.spacing.xsm;
  static const double sm = 14;
  static const double md = 16;
  static const double xmd = 20;
  static const double lg = 24;
}