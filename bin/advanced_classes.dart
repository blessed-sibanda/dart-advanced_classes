void main(List<String> arguments) {
  final robin = Robin();
  robin.fly();
  robin.layEggs();

  final platypus = Platypus();
  platypus.layEggs();

  final calc = Calculator();
  calc.sum(23, 45);
}

abstract class Bird {
  void fly();
  void layEggs();
}

mixin EggLayer {
  void layEggs() {
    print('Plop plop');
  }
}

mixin Flyer {
  void fly() {
    print('Swoosh swoosh');
  }
}

class Robin extends Bird with EggLayer, Flyer {}

abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();
  @override
  String toString() {
    return "I'm a $runtimeType";
  }
}

class Platypus extends Animal with EggLayer {
  @override
  void eat() {
    print('Munch munch');
  }

  @override
  void move() {
    print('Glide glide');
  }
}

mixin Adder {
  void sum(int a, int b) {
    print(a + b);
  }
}

class Calculator with Adder {}
