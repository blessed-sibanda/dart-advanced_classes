void challenge1() {
  final willi = Platypus(weight: 1.0);
  final billi = Platypus(weight: 2.4);
  final nilli = Platypus(weight: 2.1);
  final jilli = Platypus(weight: 0.4);
  final silli = Platypus(weight: 1.7);

  final platypi = [willi, billi, nilli, jilli, silli];
  platypi.forEach((platypus) => print(platypus.weight));
  print('---');

  platypi.sort();
  platypi.forEach((platypus) => print(platypus.weight));

  final NoteRepository repo = NoteRepository();
  print(repo.findAll());

  print(3.minutes);
}

class Platypus implements Comparable {
  Platypus({required this.weight});

  final double weight;

  void eat() {
    print('Munch munch');
  }

  void move() {
    print('Glide glide');
  }

  void layEggs() {
    print('Plop plop');
  }

  @override
  int compareTo(other) {
    if (weight < other.weight) {
      return -1;
    } else if (weight > other.weight) {
      return 1;
    } else {
      return 0;
    }
  }
}

abstract class NoteRepository {
  factory NoteRepository() => SqlDatabase();
  List<String> findAll();
}

class SqlDatabase implements NoteRepository {
  @override
  List<String> findAll() {
    return ['This', 'is', 'the', 'data'];
  }
}

extension on int {
  Duration get minutes {
    return Duration(minutes: this);
  }
}
