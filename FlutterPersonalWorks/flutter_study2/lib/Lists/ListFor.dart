void main(){

  List<int> numbers = <int>[];
  numbers.add(5);
  numbers.add(10);
  numbers.add(15);
  numbers.add(20);
  numbers.add(25);
  numbers.add(30);

  //Bu localde bir int olusturur ve kopya oldugundan listenin gercek degerini degistirmez.
  for(int i in numbers){
    i = i * 2;
  }

  for(int i in numbers){
    print("Number Regulated: $i.");
  }

  //Bu direk listenin referanslarindaki degerleri degistirir.
  for(int i = 0; i < numbers.length; i++){
    numbers[i] = numbers[i] * 2;
  }

  for(int i in numbers){
    print("Number Regulated: $i.");
  }

  //Iterable listeden iterable koleksiyone cevirmek gerek.
  Iterable<int> iterableNumbers = numbers.where((number){
    return number > 30;
  });

  //Sonra bu lazy ile listeye cevrilmesi gerek.
  List<int> filteredNumbers = iterableNumbers.toList();
  for(int f in filteredNumbers){
    print("Filtered number: $f.");
  }

  //Ya da direk listeye cevir.
  List<int> filteredNumbers2 = numbers.where((number){
    return number > 30;
  }).toList();

}