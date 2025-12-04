

//Late kullanmak icin sdk 2.12 ve ustunde olmalidir.
class UseOfLateKeyword{
  late String name;
  late int count;
  late double cost;
  late bool isAwailable;
}

//Ctor varsa late acmaz
class UseOfLateKeywordByConstructor{
  String name;
  int count;
  double cost;
  bool isAllowed;

  UseOfLateKeywordByConstructor(this.name, this.count, this.cost, this.isAllowed);

}