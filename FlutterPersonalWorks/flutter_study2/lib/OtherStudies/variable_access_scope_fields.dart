class VariableAccessScopeFields{
  int num1 = 10;
  int num2 = 20;

  void Add(){
    int num1 = 20, num2 = 30;
    num1 = num1 + num2;
    print("Add Method Num1 Var: $num1.");

    this.num1 = this.num1 + this.num2;
    print("Add Method Global Num1 Var: ${this.num1}.");

  }

  void Multiply(){
    num1 = num1 * num2;
    print("Multiply Method Global Num1 Var: $num1.");
  }

}

void main(){
  VariableAccessScopeFields variableAccessScopeFields = new VariableAccessScopeFields();
  variableAccessScopeFields.Add();
  variableAccessScopeFields.Multiply();
}