void main(List<String> arguments) {
  final DataRepository repository = DataRepository();
  final temperature = repository.fetchTemperature('Harare');
  print(temperature);

  final someClass = SomeClass();
  print(someClass.myField);
  someClass.myMethod();

  final someOtherClass = SomeOtherClass();
  print(someOtherClass.myField);
  someOtherClass.myMethod();

  final Bottle bottle = Bottle();
  bottle.open();
}

abstract class DataRepository {
  factory DataRepository() => FakeWebServer();
  double? fetchTemperature(String city);
}

class FakeWebServer implements DataRepository {
  @override
  double? fetchTemperature(String city) {
    return 42.0;
  }
}

class AnotherClass {
  int myField = 67;
  void myMethod() => print(myField);
}

class SomeClass extends AnotherClass {}

class SomeOtherClass implements AnotherClass {
  @override
  int myField = 0;

  @override
  void myMethod() {
    print('Hello');
  }
}

abstract class Bottle {
  factory Bottle() => SodaBottle();
  void open();
}

class SodaBottle implements Bottle {
  @override
  void open() {
    print('Fizz fizz');
  }
}
