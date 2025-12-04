void main(){

  int i = 10;
  double j = 10.2;

  //Tip donusumu icin acikca method gerek C# gibi degil.
  int k = j.toInt();
  double l = i.toDouble();

  String s1 = k.toString();
  String s2 = l.toString();

  String m1 = "10";
  String m2 = "10.5";

  //Stringler tiplere de uygun olmasi gerek yoksa hata firlatir.
  int sm1 = int.parse(m1);
  double sm2 = double.parse(m2);

  print("$i $j $k $l $m1 $m2 $s1 $s2 $sm1 $sm2");
}