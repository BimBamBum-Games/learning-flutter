import 'package:flutter_study2/Inheritance/Automobile.dart';
import 'package:flutter_study2/Inheritance/Togg.dart';
import 'package:flutter_study2/Inheritance/Vehicle.dart';

void main(){
  Vehicle vehicle = Vehicle("Mor", 1);
  Automobile automobile = Automobile("Medium", "Pink", 2);
  Togg togg = Togg("Sedan", "Yesil", "Big", 3);

  print("Vehicle Color: ${vehicle.color}");
  print("Vehicle GearBox: ${vehicle.gearBox}");

  print("Automobile CaseType: ${automobile.caseType}");
  print("Automobile Color: ${automobile.color}");
  print("Automobile GearBox: ${automobile.gearBox}");

  print("Togg Model: ${togg.model}");
  print("Togg CaseType: ${togg.caseType}");
  print("Togg Color: ${togg.color}");
  print("Togg GearBox: ${togg.gearBox}");



}