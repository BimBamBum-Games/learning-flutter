import 'dart:collection';

void main(){

  HashSet<Soldier> soldiers = HashSet<Soldier>();
  Soldier soldier0 = Soldier(1, "John");
  soldiers.add(soldier0);
  soldiers.add(Soldier(2, "Jane"));
  soldiers.add(Soldier(3, "Haluk"));
  soldiers.add(Soldier(4, "Lucas"));

  print("-----------------------------------------------------------------------------------------------");
  for(Soldier s in soldiers){
    print("Solider: ${s.name} Soldier Id: ${s.id}");
  }
  print("-----------------------------------------------------------------------------------------------");
  for(int i = 0; i <soldiers.length; i++){
    Soldier soldier = soldiers.elementAt(i);
    print("Soldier Name: ${soldier.name}, Soldier Id: ${soldier.id}");
  }

  print("-----------------------------------------------------------------------------------------------");
  if(soldiers.contains(soldier0)){
    print("This Entry Exists: ${soldier0.name}, ${soldier0.id}");
  }

  //Referans baska oldugundan burasi else kismina duser.
  print("-----------------------------------------------------------------------------------------------");
  Soldier soldierSameIdWithName = Soldier(2, "Jane");
  if(soldiers.contains(soldierSameIdWithName)){
    print("This Entry Exists: ${soldierSameIdWithName.name}, ${soldierSameIdWithName.id}");
  }else{
    print("This Entry Does Not Exist: ${soldierSameIdWithName.name}, ${soldierSameIdWithName.id}");
  }

  //Tekrar eklemeye calis ama ekleyemez.
  print("-----------------------------------------------------------------------------------------------");
  soldiers.add(soldier0);
  for(Soldier s in soldiers){
    print("Solider: ${s.name} Soldier Id: ${s.id}");
  }

  //Referansi silmeye calis ve silecektir.
  print("-----------------------------------------------------------------------------------------------");
  soldiers.remove(soldier0);
  for(Soldier s in soldiers){
    print("Solider: ${s.name} Soldier Id: ${s.id}");
  }

  print("-----------------------------------------------------------------------------------------------");
  print("Soldiers Hashset Empty? ${soldiers.isEmpty}");

  print("-----------------------------------------------------------------------------------------------");
  soldiers.clear();
  print("Hashset clear: ${soldiers.length}");
}

class Soldier{
  int id;
  String name;

  Soldier(this.id, this.name);

}