import 'package:flutter/material.dart';
import 'package:taski_challenger_app/src/config/ds/tokens/globals/shapes.dart';

class AppSpacing {
  const AppSpacing._();

  static _AppSpacerSide get left => _AppSpacerSide(_SidesFlag(1, 0, 0, 0));
  static _AppSpacerSide get top => _AppSpacerSide(_SidesFlag(0, 1, 0, 0));
  static _AppSpacerSide get right => _AppSpacerSide(_SidesFlag(0, 0, 1, 0));
  static _AppSpacerSide get bottom => _AppSpacerSide(_SidesFlag(0, 0, 0, 1));
  static _AppSpacerSide get all => _AppSpacerSide(_SidesFlag(0, 0, 0, 1));
  static _AppSpacerSide get horizontal => _AppSpacerSide(_SidesFlag(1, 0, 1, 0));
  static _AppSpacerSide get vertical => _AppSpacerSide(_SidesFlag(0, 1, 0, 1));
}

class _AppSpacerSide {
  _SidesFlag sidesFlag;

  _AppSpacerSide(this.sidesFlag);

  EdgeInsets get none {
    return EdgeInsets.zero;
  }

  EdgeInsets get xsm {
    return _dimensionSize(sidesFlag, _FactorHelper.xsm);
  }

  EdgeInsets get sm {
    return _dimensionSize(sidesFlag, _FactorHelper.sm);
  }

  EdgeInsets get md {
    return _dimensionSize(sidesFlag, _FactorHelper.md);
  }

  EdgeInsets get xmd {
    return _dimensionSize(sidesFlag, _FactorHelper.xmd);
  }

  EdgeInsets get lg {
    return _dimensionSize(sidesFlag, _FactorHelper.lg);
  }

  EdgeInsets _dimensionSize(_SidesFlag sidesFlag, double factor) {
    return EdgeInsets.only(
      left: sidesFlag.leftFlag * factor,
      top: sidesFlag.topFlag * factor,
      right: sidesFlag.rightFlag * factor,
      bottom: sidesFlag.bottomFlag * factor,
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
  static double sm = Shapes.spacing.sm;
  static double md = Shapes.spacing.md;
  static double xmd = Shapes.spacing.xmd;
  static double lg = Shapes.spacing.lg;
}