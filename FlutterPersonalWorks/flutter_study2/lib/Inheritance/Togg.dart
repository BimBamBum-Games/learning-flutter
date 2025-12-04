import 'package:flutter_study2/Inheritance/Automobile.dart';

class Togg extends Automobile{
  String model;

  //Ayrica paramterelerin sirasi da onemli
  Togg(this.model, String color, String caseType, int gearBox, ) : super(color, caseType, gearBox);
}