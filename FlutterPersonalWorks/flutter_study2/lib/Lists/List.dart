class Automobile{
  late int count;
  late String name;

  Automobile(this.count, this.name);

  @override
  String toString() {
    return "$count $name";
  }
}

void main(){
  Automobile a0 = Automobile(10, "Honda");
  Automobile a1 = Automobile(60, "Mazda");
  Automobile a2 = Automobile(50, "Opel");
  Automobile a3 = Automobile(40, "Hyundai");
  Automobile a4 = Automobile(20, "Togg");

  List<Automobile> automobiles = <Automobile>[];

  automobiles.add(a0);
  automobiles.add(a1);
  automobiles.add(a2);
  automobiles.add(a3);
  automobiles.add(a4);

  print("$automobiles");

  for(Automobile a in automobiles){
    print(a);
  }

  print("List length: ${automobiles.length}");
  print("List first: ${automobiles.first}");
  print("List last: ${automobiles.last}");

  //-1 ayni kal, 0 farketmez, 1 yer degistir a > b iseye gore.
  Comparator<Automobile> asc = (a, b) => a.count.compareTo(b.count);
  automobiles.sort(asc);
  print(automobiles);

  Comparator<Automobile> desc = (a, b) => b.count.compareTo(a.count);
  automobiles.sort(desc);
  print(automobiles);

}