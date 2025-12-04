class Personal{
  void applyHiring(){
    print("Personal has hired!");
  }
}

//Is keyword ile tip kontrolu saglanarak otomatik downcast de saglanmis olur. Acik downcast ise as keyword ile yapilir.
class Manager extends Personal{

  void hirePersonal(Personal personal){
    personal.applyHiring();
  }

  void rankPersonal(Personal personal){

    if(personal is Teacher){
      personal.rankPersonal();
    }

    if(personal is Worker){
      print("Worker can not be ranked!");
    }
  }
}

class Worker extends Personal{

}

//Override ile de method spesifiklestirme yapilabilir.
class Teacher extends Personal{
  @override
  void applyHiring(){
    print("Teacher has hired!");
  }

  void rankPersonal(){
    pragma("The teacher has Ranked!");
  }
}

void main(){
  Personal manager = new Manager();
  Personal worker = new Worker();
  Personal teacher = new Teacher();

  //Tip cevirmesi gerek
  manager as Manager;
  manager.hirePersonal(worker);
  manager.hirePersonal(teacher);
  
  manager.rankPersonal(worker);
  manager.rankPersonal(teacher);
}