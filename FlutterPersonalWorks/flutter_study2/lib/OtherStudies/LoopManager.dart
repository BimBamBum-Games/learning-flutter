import 'dart:io';

void main(){

  for(int i = 0; i < 10; i++){
    print("Index i: $i");
  }

  int max = 20; int i = 0;
  while(i < max){
    print("i: $i and max: $max");
    i++;
  }

  String userInput = stdin.readLineSync()!;
  //int userSelection = int.parse();

}