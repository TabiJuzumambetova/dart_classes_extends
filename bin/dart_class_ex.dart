
import 'dart:io';

void main(){
   print("Добро пожаловать! \n Здесь  задания заданные в 23.10 по классам Жузумамбетовой Табихат.Пожалуйста выберите задание которое хотите проверить \n 1)Автомобиль\n 2)Фрукт\n 3)Животное\n 4)Товар\n 5)Фигура\n 6)Сотрудник \n 7)Здание \n 8)Овощь\n 9)Музыкальный инструмент\n10)Организм ");
  String ans ="";

  do {
    try{
    int choose =int.tryParse(stdin.readLineSync()??"")??0;
  if(choose>11){
    print("Введите число от 1 до 10 ");

  }else{
    switch(choose){
    case 1:
    print("Создайте класс Автомобиль с полями марка и год. Затем создайте дочерний класс ЛегковойАвтомобиль, который наследует Автомобиль и переопределяет метод описание() для возвращения описания легкового автомобиля.\nРешение:");
    Auto bmw =Auto(mark: "bmw", year: 2000);
    LightAuto vers=LightAuto(mark: "vers", year: 200);
    bmw.infoCar();
    vers.infoCar();
   
  break;
  case 2:
    print("Создайте класс Фрукт с полем название. Затем создайте класс Яблоко, который наследует Фрукт и переопределяет метод вкус() для возвращения описания вкуса яблока.\nРешение:");
    Fruit lemon=Fruit(name: "lemon");
    Apple apple=Apple(name: "apple");
    print(lemon.taste("кислый"));
    print(apple.taste("вкус сладкого яблока"));
    
    
  break;
  case 3:
    print("Создайте класс Животное с полями имя и возраст. Затем создайте класс Собака, который наследует Животное и переопределяет метод голос() для возвращения звука, который издает собака.\nРешение:");
    Animal cat=Animal(age: 3, name: "moona");
    Dog belka=Dog(age: 5, name: "belka");
    cat.voice("meow");
    belka.voice("gav");
    
  break;
  case 4:
    print("Создайте класс Товар с полями название и цена. Затем создайте класс Продукт, который наследует Товар и переопределяет метод описание() для возвращения описания продукта.\nРешение:");
    Product something=Product(name: "idn", price: 100);
    Product2 something2=Product2(name: "idn2", price: 200);
    something.infoProduct();
    something2.infoProduct();
    
  break;
  case 5:
    print("Создайте класс Фигура с полями цвет и площадь. Затем создайте класс Круг, который наследует Фигура и переопределяет метод площадь() для вычисления площади круга\nРешение:");
    Figure rect=Figure(color: "red", s: 6);
    Circle circle=Circle(color: "blue", s: 7);
    rect.square(3, 4);
    circle.square(3.14, 6);
    
  break;
  case 6:
   print("Создайте класс Сотрудник с полями имя и зарплата. Затем создайте класс Менеджер, который наследует Сотрудник и переопределяет метод вывестиИнформацию() для вывода информации о менеджере.\nРешение:");
   Employee you =Employee(name: "your name", salary: 30000);
   Maneger me=Maneger(name: "my name", salary: 50000);
   you.infoEmployee();
   me.infoEmployee();

   
  break;
  case 7:
    print("Создайте класс Здание с полем адрес. Затем создайте класс Дом, который наследует Здание и переопределяет метод типЗдания() для указания, что это дом.\nРешение:");
    Building build =Building(address: "jfnvhfe");
    House my=House(address: "nbfhf");
    build.typeBuild();
    my.typeBuild();
    
  break;
  case 8:
    print("Создайте класс Овощ с полем название. Затем создайте класс Морковь, который наследует Овощ и переопределяет метод цвет() для возвращения цвета моркови.\nРешение:");
    Vegetable potato=Vegetable(name: "potato");
    Carrot carrot=Carrot(name: "carrot");
    potato.color();
    carrot.color();
    
  break;
   case 9:
    print("Создайте класс МузыкальныйИнструмент с полем название. Затем создайте класс Гитара, который наследует МузыкальныйИнструмент и переопределяет метод звук() для воспроизведения звука гитары.\nРешение:");
    MusicalInstrument komuz =MusicalInstrument(name: "komuz");
    Guitar guitar=Guitar(name: "guitar");
    komuz.sound();
    guitar.sound();
    
  break;
  case 10:
  print("Создайте класс МузыкальныйИнструмент с полем название. Затем создайте класс Гитара, который наследует МузыкальныйИнструмент и переопределяет метод звук() для воспроизведения звука гитары.\nРешение:");
  Organism my=Organism(name: "my");
  Human tabi=Human(name: "Tabi", age: 19);
  my.greetings();
  tabi.greetings();


  }

  }
  print("s - Заверщить программу\nEnter-Продолжить ");
  ans=stdin.readLineSync()??"";

  }catch(e){
    print(e);
  }
    
  } while (ans!="s");
  

}
//1
class Auto{
  String mark;
  int year;
  Auto({required this.mark,required this.year});
  void infoCar(){
    print("Машина :$mark,год:$year ");
  }
}
class LightAuto extends Auto{
  LightAuto({required super.mark, required super.year});
  @override
  void infoCar() {
    print("Легковой Автомобиль:$mark,год:$year");
  }
}



//2

class Fruit{
  String name;
  Fruit({required this.name});
taste(String taste){
  return taste;
  
}
} 

class Apple extends Fruit{
  Apple({required super.name});
  @override
  taste(String taste) {
    return taste;
    
  }

}



//3

class Animal{
  String name;
  int age;
  Animal({required this.age,required this.name});
  void voice(String voice){
    print(voice);
  }
}
class Dog extends Animal{
  Dog({required super.age, required super.name});
  @override
  void voice(String voice) {
    print(voice);
  }


}



//4
class Product{
  String name;
  double price;
  Product({required this.name,required this.price});
  void infoProduct(){
    print('$name $price');
  }
}
class Product2 extends Product{
  Product2({required super.name, required super.price});
  @override
  void infoProduct() {
print('$name $price');
  }

}

//5

class Figure{
  String color;
  double s;
  Figure({required this.color,required this.s});
  void square(double a,double b){
    print("s=${a*b}");
  }
}
class Circle extends Figure{
  Circle({required super.color, required super.s});
  @override
  void square(double p, double r) {
     const p =3.14;
    print("s=${p*(r*r)}");
  }

}

//6

class Employee{
  String name;
  double salary;
  Employee({required this.name,required this.salary});
  void infoEmployee(){
    print("Сотрудник $name, зарплата $salary");
  }
}
class Maneger extends Employee{
  Maneger({required super.name, required super.salary});
  @override
  void infoEmployee() {
    print("Менеджер $name ,его зарплата $salary");
    
  }

}


//7

class Building{
  String address;
  Building({required this.address});
  void typeBuild(){
    print("Тип здание");

  }
}
class House extends Building{
  House({required super.address});
  @override
  void typeBuild() {
    print("Тип Дом");
    
  }

}

//8

class Vegetable{
  String name;
  Vegetable({required this.name});
  void color(){
    print("Цвет $name");

  }
}
class Carrot extends Vegetable{
  Carrot({required super.name});
  @override
  void color() {
    print("Оранжевый");
  }
}

//9

class MusicalInstrument{
  String name;
  MusicalInstrument({required this.name});
  void sound(){
    print("звук $name");
  }
}
class Guitar extends MusicalInstrument{
  Guitar({required super.name});
  @override
  void sound() {
    print("звук гитары");
  }

}

//10

class Organism{
  String name;
  Organism({required this.name});
  void greetings(){
    print("привет $name");
  }
}
class Human extends Organism{
  int age;
  Human({required super.name,required this.age});
  @override
  void greetings() {
    print("Привет, меня зовут $name,мне $age лет");
  }

}