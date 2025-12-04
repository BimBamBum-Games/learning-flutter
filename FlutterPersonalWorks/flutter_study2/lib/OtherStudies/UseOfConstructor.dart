class Item{
  String name;
  int count;
  double damage;

  Item(this.name, this.count, this.damage);
}

class GameObject{
  String name;
  double cost;
  int count;

  GameObject({required this.name, required this.cost, required this.count});
}