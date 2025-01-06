import 'package:taski_challenger_app/src/ds/tokens/globals/shapes/border.dart';
import 'package:taski_challenger_app/src/ds/tokens/globals/shapes/opacity.dart';
import 'package:taski_challenger_app/src/ds/tokens/globals/shapes/spacing.dart';

class Shapes {
  const Shapes._();

  static Border get border => Border();
  static Opacity get opacity => Opacity();
  static Spacing get spacing => Spacing.instance;
}