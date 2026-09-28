// void main() {
//   // переменные и print
//   String name = 'Влад';
//   int age = 18;
//   double height = 1.75;
//   bool isStudent = true;

//   print('Привет, $name! Тебе $age лет.');
//   print('через 5 лет тебе будет ${age + 5} лет.');
//   print('Рост: $height м, студент: $isStudent');

//   // Тип var
//   var score = 95;
//   var language = 'Dart';
//   print('$language: $score');

//   // объявляем переменную null
//   String? city = null;
//   // обработка с помощью условия
//   if (city != null) {
//     print(city.toUpperCase());
//   }
//   // обработка с помощью ?
//   print(city?.toUpperCase());
//   // замена с помощью ??
//   String display = city ?? 'Аноним';
//   print(display);

//   // коллекции(Массив)
//   List<String> fruits = ['Яблоко', 'Банан', 'Груша'];
//   fruits.add('Апельсин');
//   print(fruits[0]);
//   print(fruits.length);

//   // Словарь(Map)
//   Map<String, dynamic> person = {'name': 'Влад', 'age': '18'};
//   print(person['name']);
//   person['sity'] = 'Волжский';

//   // Множество(set)
//   Set<int> ids = {1, 2, 3, 2, 1};
//   print(ids);
//   print(ids.length);

//   // перебор коллекций через for
//   List<String> fruits2 = ['яблоко', 'банан', 'груша'];
//   for (var fruit in fruits2) {
//     print(fruit);
//   }
//   // функции
//   print(greet('Артём'));
//   print(square(4));
//   print(half(8.4));
//   describePet(name: 'Дружок', age: 5, species: 'Собака');
//   describePet(age: 8, name: 'Барсик');
//   describePet(name: 'Петька', species: 'Попугай', age: 1);
//   repeat('ха');
//   repeat('ха', 3);

//   // Условия
//   int score2 = 85;
//   String grade;
//   if (score2 >= 90) {
//     grade = 'A';
//   } else if (score2 >= 75) {
//     grade = 'B';
//   } else {
//     grade = 'C';
//   }
//   print(grade);
//   String result = score >= 60 ? 'Сдал' : 'Не сдал';
//   print(result);

//   // циклы
//   for (int i = 0; i < 5; i++){
//     print(i);
//   }

//   // switch
//   String day = 'Пн';
//   switch (day) {
//     case 'Сб':
//     case 'Вс':
//       print('Выходной');
//       break;
//     case 'Пн':
//       print('Начало недели');
//       break;
//     default:
//       print('Рабочий день');
//   }
// }

// String greet(String name) => 'Привет, $name!';
// int square(int x) => x * x;
// double half(double x) => x / 2;

// void describePet({
//   required String name,
//   String species = 'Кот',
//   int age = 0,
// }) {
//   print('$name - $species, возраст $age');
// }

// String repeat(String text, [int times = 2]) {
//   String result = '';
//   for (int i = 0; i < times; i++) {
//     result += text;
//   }
//   return result;
// }


double average (List<int> grades) {
  if (grades.isEmpty) return 0;
  int sum = 0;
  for (var grade in grades) {
    sum += grade;
  }
  return sum / grades.length;
}

int maxGrade(List<int> grades){
  int max = grades[0];
  for (var grade in grades){
    if (grade > max) max = grade;
  }
  return max;
}

int minGrade(List<int> grades) {
  int min = grades[0];
  for (var grade in grades){
    if (grade < min) min = grade;
  }
  return min;
}

String letterGrade(double avg) {
  if (avg >= 4.5) return 'Отлично';
  if (avg >= 3.5) return 'Хорошо';
  if (avg >= 2.5) return 'Удовлетворительно';
  return 'Неудовлетворительно';
}

void printStats({required String name, required List<int> grades}){
  double avg = average(grades);
  print(' $name');
  print('Оценки: $grades');
  print('Среднее: ${avg.toStringAsFixed(2)}');
  print('Макс: ${maxGrade(grades)}, Мин: ${minGrade(grades)}');
  print('Итог: ${letterGrade(avg)}');
  print('');
}

void main() {
  Map<String, List<int>> students = {
    'Артём Иванов': [5,4,5,3,4,5],
    'Мария Петровна': [4,4,5,5,4,5],
    'Иван Сидоров': [3,3,4,2,3,4],
  };
  print('Анализ оценок');
  students.forEach((name,grades){
    printStats(name: name, grades: grades);
  });
  print('Общая статистика');
  int totalStudents = students.length;
  print('Всего студентов: $totalStudents');
  int excellentCount = 0;
  students.forEach((name, grades){
    if (average(grades) >= 4.5) excellentCount++;
  });
  print('Отличников: $excellentCount  из $totalStudents');
}