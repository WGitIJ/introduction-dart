void main(){

  //region Introduction
  print("Hello, World!");

  String name = 'Wisdom Imade';
  print(name);
  print(name.length);


  var string1 = 'Hola' 'mon';
  print(string1);

  //! Interpolacion de cadenas
  String nombre = "Ana";
  print("Hola $nombre");

  //! Si queremos ejecutar una operacion mas compleja, debemos usar llaves
  int a = 5;
  int b = 3;
  print("La suma es ${a + b}");
  //endregion

  //region Sets

  Set <String> heroes = {'Superman', 'Batman', 'Flash'};
  print(heroes);

  Set<String> wagnerHeroes = {'Aquaman', 'Cyborg', 'Mujer Maravilla'};
  heroes.addAll(wagnerHeroes);
  print(heroes);

  //endregion

  //region Maps
  var languages = {
    //Clau : Valor
    'ca' : 'Catalan',
    'es' : 'Spanish'
  };

  print(languages);
  print(languages.values);
  print(languages['es']);
  languages['fr'] = 'French';

  var newLanguages = {'en' : 'English'};
  languages.addAll(newLanguages);
  print(languages);

  languages.addEntries([
    MapEntry('de', 'German'),
    MapEntry('it', 'Italian'),
    MapEntry('pt', 'Portuguese'),
    MapEntry('en', 'Inglish')
  ]);

  print(languages);
  //endregion

  //region ForEach
  heroes.forEach((heroe)=>print(heroe)); //Solo funciona con Sets y Listas, con Maps se hace diferente

  //endregion

  //region Classes and Constructors
  Person p1 = new Person.named(
      name: "Ana",
      surname: "Gomez",
      age: 25
  );

  Person p2 = new Person("Juan", "Perez");
  print(p2);

  //endregion
}

// Creating Clases
class Person{
  late String name, surname;
  int age = 0;

  //Cosntructor sugar syntax
  //Person(this.name, this.surname);

  //Constructor nombrado
  Person(String name, String surname){
    this.name = name;
    this.surname = surname;
  }

  //Constructores con parametros nombrados
  Person.named({required String name, required String surname, int? age}){
    this.name = name;
    this.surname = surname;
    this.age = age ?? 0;
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Name: ${name} Surname: ${surname} Age: ${age}';
  }
}

abstract class Animal{
  late int foots;

  Animal(int foots){
    this.foots = foots;
  }
  void MakeSound();
}

class Moix extends Animal{
  Moix(int foots) : super(foots);

  void MakeSound(){
    print("Miau");
  }
}

class Square{
  double _side;

  Square(double side) : this._side = side;
  Square.zero() : this._side = 0;

  double getArea(){
    return this._side*this._side;
  }

  //Setters && Getters
  set side(double side){
    _side = side;
  }

  double get area{
    return this._side*this._side;
  }
}