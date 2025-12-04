
//abstract class ile interface keyword kullanilir.

abstract class ISqueezable{
  void squeeze();
}

abstract class IEatable{
  void eat();
}

//Birden fazla implement saglanabilir.
class Apple implements ISqueezable, IEatable{
  @override
  void eat() {
    print("Eat Apple");
  }

  @override
  void squeeze() {
    print("Squeeze Apple");
  }
}

class Chicken implements IEatable{
  @override
  void eat() {
    print("Eat Chicken");
  }
}

class Lion{

}

class Pineapple extends Apple{
  @override
  void squeeze() {
    print("Squeeze Pineapple");
  }

  @override
  void eat() {
    print("Eat Pineapple");
  }
}

void main(){
  IEatable apple = Apple();
  apple.eat();

  ISqueezable pineapple = Pineapple();
  pineapple.squeeze();

  if(pineapple is Apple){
    pineapple.eat();
  }

  //Her zaman gercek runtime tipi kontrol edilir. Is ve As gercek tipe bakar C# ve Unity C# da buna dahil.
  if(pineapple is IEatable){
    (pineapple as IEatable).eat();
  }

  if(pineapple case IEatable eatable){
    eatable.eat();
  }

}
