import 'package:taski_challenger_app/src/core/ds/tokens/globals/shapes.dart';

class AppOpacity {

  static int get medium => convertToByte(Shapes.opacity.opacityMedium);
  static int get hight => convertToByte(Shapes.opacity.opacityHight);

  static int convertToByte(double floatVal) {
    return (floatVal * 255).round().clamp(0, 255).toInt();
  }
}