abstract class Worker{
  late String id;
  late String name;
  late double salary;
  late double retention;

  Worker(
      this.id,
      this.name,
      this.salary,
      this.retention);

  void printName(){
    print("The name of the employee is: " + this.name);
  }

  void netSalary();

}

class Administrator extends Worker {
  Administrator(super.id, super.name, super.salary, super.retention);

  @override
  void netSalary() {
    // TODO: implement netSalary
  }

}

class Comercial extends Worker{
  late int numSales;
  late double comision;

  Comercial(super.id, super.name, super.salary, super.retention, this.numSales, this.comision);

  @override
  void netSalary() {
    double netSalary = this.salary - (this.salary * this.retention / 100) + (this.numSales * this.comision);
    print("The net salary of the employee is: " + netSalary.toString());
  }
}

void main(){
  Administrator maria = Administrator("1", "Maria", 2000, 10);
  maria.printName();
  maria.netSalary();

  Comercial aina = Comercial("2", "Aina", 1500, 5, 20, 50);
  aina.printName();
  aina.netSalary();

}

