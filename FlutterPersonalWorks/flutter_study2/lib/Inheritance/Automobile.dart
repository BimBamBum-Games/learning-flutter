import 'package:flutter_study2/Inheritance/Vehicle.dart';

class Automobile extends Vehicle{
  String caseType;

  //Burada kalitim alan class ctor kalitim alninan parametreleri this ile almaz.
  Automobile(this.caseType, String color, int gearBox) : super(color, gearBox);
}