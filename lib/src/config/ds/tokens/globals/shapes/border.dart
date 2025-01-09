class Border {
  const Border._();
  
  static const Border _instance = Border._(); 

  static Border get instance => _instance;

  double get radiusMedium => 12.0;
  double get radiusLarge => 16.0;
}