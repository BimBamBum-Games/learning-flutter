import 'dart:math';

void main(){
  double radius = 10;
  Arithmetic arithmetic = new Arithmetic();
  double result = arithmetic.circleArea(radius);
  print("Result Circle Area: $result");
  double result2 = arithmetic.DoIterativeArithmeticExample();
  print("Result Arithmetic Iterative: $result2");
  arithmetic.FirstAdd();
  arithmetic.LastAdd();
}

class Arithmetic{
  final pi = 3.14;

  double circleArea(double radius) {
    return pi *  pow(radius, 2);
  }

  double DoIterativeArithmeticExample(){
    double num1 = 10;
    num1 = num1 + 10;
    num1 += 10;
    return num1;
  }

  void FirstAdd(){
    double num1 = 10;
    num1++;
    print("FirstAdd: $num1");
  }

  void LastAdd(){
    double num1 = 20;
    ++num1;
    print("LastAdd: $num1");
  }

}