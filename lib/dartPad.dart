class Person{
  String? name;
  int? age;
  String? sex;
  Person(this.name, this.age, this.sex);
  int addNumber(int a,int b){
    int plus = a+b;
    return plus;
  }
}
void main(){
  Person person = new Person('choigoyo', 27, 'femail');
  print(person.age);
  print(person.name);
  print(person.sex);
  print(person.addNumber(1, 2));
}