import 'package:flutter_study2/Composition/Category.dart';
import 'package:flutter_study2/Composition/Film.dart';
import 'package:flutter_study2/Composition/Director.dart';

void main(){
  Category ct1 = Category(0, "Haluk Ozgen");
  Director dr1 = Director(0, "Ali Ozgen");
  Film fl1 = Film(0, "Sierpinsky Gasget", 1990, ct1, dr1);

  print(fl1.id);
  print(fl1.name);
  print(fl1.year);
  print(fl1.category.id);
  print(fl1.category.name);
  print(fl1.director.id);
  print(fl1.director.name);
}