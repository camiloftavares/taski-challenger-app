class Spacing {
  const Spacing._();
  
  static const Spacing _instance = Spacing._(); 

  static Spacing get instance => _instance;

  double get xsm => 12;
  double get sm => 14;
  double get md => 16;
  double get xmd => 20;
  double get lg => 24;
}