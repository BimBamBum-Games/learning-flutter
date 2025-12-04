import 'package:flutter_study2/Composition/Director.dart';
import 'package:flutter_study2/Composition/Category.dart';

class Film{
  int id;
  String name;
  int year;
  Category category;
  Director director;

  Film(this.id, this.name, this.year, this.category, this.director);
}