class Person {
  String _name;
  
  Person(this._name);
  
  String get name => _name;
  
  set name(String name) => _name = name;
}

class Engine {
  String _model;
  
  int _speed;
  
  Engine(this._model, this._speed);
  
  String get model => _model;
  
  int get speed => _speed;
  
  set model(String model) => _model = model;
  
  set speed(int speed) => _speed = speed;
  
  void displayEngineInfo() {
    print('Model: $_model');
    
    print('Speed: $_speed km/h');
  }
}

class Car {
  String _brand;
  
  String _model;
  
  Person _owner;
  
  Engine _engine;

  Car(this._brand, this._model, this._owner, this._engine);

  String get brand => _brand;
  
  String get model => _model;
  
  Person get owner => _owner;
  
  Engine get engine => _engine;

  set brand(String brand) => _brand = brand;
  
  set model(String model) => _model = model;
  
  set owner(Person owner) => _owner = owner;
  
  set engine(Engine engine) => _engine = engine;

  void displayCarInfo() {
    print('Brand: $_brand');
    
    _engine.displayEngineInfo();
    
    print('Owner: ${_owner.name}');
  }

  void run() {
    print('ความเร็ว ${_engine.speed} km/h');
  }
}

class Honda extends Car {
  String _color;

  Honda(String brand, String model, Person owner, Engine engine, this._color)
      : super(brand, model, owner, engine);
  String get color => _color;
  
  set(String color) => _color = color;
  
  void run() {
    var topspeed = 120;
    print('ความเร็ว $topspeed km/h');
  }

  void displayCarInfo() {
    print('Brand: $_brand');
    
    print('Color: $_color');
    
    _engine.displayEngineInfo();
    
    print('Owner: ${_owner.name}');
  }
}

void main() {

  var engine = Engine('Cybertruck',  209);
  var engine2 = Engine('Civic', 120);
  var person = Person('mot');
  var person2 = Person('Sombat');
  

  var car = Car('tesla', '', person, engine);
  var honda = Honda('Honda', '', person2, engine2, 'RED');
  print('tesla');
  car.displayCarInfo();
  car.run();

  print('\nHonda');
  honda.displayCarInfo();
  honda.run();
}
