import 'dart:collection';

class Entity{
  int id;
  String name;

  Entity(this.id, this.name);
}

void main(){
  //Dictionaryden farki add olmamasi ve eger deger varsa direk gunceller.
  HashMap<int, Entity> entities = new HashMap<int, Entity>();
  Entity entity0 = new Entity(100, "Entity 0");
  Entity entity1 = new Entity(101, "Entity 1");
  Entity entity2 = new Entity(102, "Entity 2");
  Entity entity3 = new Entity(103, "Entity 3");
  Entity entity4 = new Entity(104, "Entity 4");
  entities[entity0.id] = entity0;
  entities[entity1.id] = entity1;
  entities[entity2.id] = entity2;
  entities[entity3.id] = entity3;
  entities[entity4.id] = entity4;
  print("Entities HashMap Element Count: ${entities.length}");

  //Keyleri cekerek forda kullanir.

  Iterable<int> entitiesKeys = entities.keys;
  for(int k in entitiesKeys){

      Entity? entity = entities[k];
      Entity? entityNullableTest = null;
      print("Entity Id: ${entity?.id} Entity Name: ${entity?.name}");
  }
}