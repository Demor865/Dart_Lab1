void main() {
  // переменные и print
  String name = 'Влад';
  int age = 18;
  double height = 1.75;
  bool isStudent = true;

  print('Привет, $name! Тебе $age лет.');
  print('через 5 лет тебе будет ${age + 5} лет.');
  print('Рост: $height м, студент: $isStudent');

  // Тип var
  var score = 95;
  var language = 'Dart';
  print('$language: $score');

  // объявляем переменную null
  String? city = null;
  // обработка с помощью условия
  if (city != null) {
    print(city.toUpperCase());
  }
  // обработка с помощью ?
  print(city?.toUpperCase());
  // замена с помощью ??
  String display = city ?? 'Аноним';
  print(display);

  // коллекции(Массив)
  List<String> fruits = ['Яблоко', 'Банан', 'Груша'];
  fruits.add('Апельсин');
  print(fruits[0]);
  print(fruits.length);

  // Словарь(Map)
  Map<String, dynamic> person = {'name': 'Влад', 'age': '18'};
  print(person['name']);
  person['sity'] = 'Волжский';

  // Множество(set)
  Set<int> ids = {1, 2, 3, 2, 1};
  print(ids);
  print(ids.length);

  // перебор коллекций через for
  List<String> fruits2 = ['яблоко', 'банан', 'груша'];
  for (var fruit in fruits2) {
    print(fruit);
  }
  // функции
  print(greet('Артём'));
  print(square(4));
  print(half(8.4));
  describePet(name: 'Дружок', age: 5, species: 'Собака');
  describePet(age: 8, name: 'Барсик');
  describePet(name: 'Петька', species: 'Попугай', age: 1);
  repeat('ха');
  repeat('ха', 3);
}

String greet(String name) => 'Привет, $name!';
int square(int x) => x * x;
double half(double x) => x / 2;

void describePet({
  required String name,
  String species = 'Кот',
  int age = 0,
}) {
  print('$name - $species, возраст $age');
}

String repeat(String text, [int times = 2]) {
  String result = '';
  for (int i = 0; i < times; i++) {
    result += text;
  }
  return result;
}
