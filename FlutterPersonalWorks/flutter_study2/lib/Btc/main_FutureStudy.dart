

class FutureStudyHandler{
  Future<String> getInfo() async {
    print("Future Taski Baslatildi!");
    Duration delayed = Duration(seconds: 1);
    await Future.delayed(delayed, () => print("Delay verilen Karsilama Callbacki"));
    return "Tum tasklar bitti!";
  }
}

void main() async{
  print("Main baslatiliyor.");
  FutureStudyHandler btcwsh = new FutureStudyHandler();
  await btcwsh.getInfo();
  print("Bu mainde async awaitsiz sonlandirildi");
}