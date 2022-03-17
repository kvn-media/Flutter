void main() {
  var namaVariabel = 'Belajar Flutter';
  var fullName = 'Muhammad Kevin';

  var name = 'Kevin';

  var iniAngka = 20;
  var sudahLogin = true;

  String bootcampName = "Enigma Camp";

  num age = 20.0;
  int otherAge = 37;
  double phi = 3.14;

  bool isLoggedIn = true;

  print(isLoggedIn);
  print(namaVariabel);

  print(
      '$fullName $name $iniAngka $sudahLogin $bootcampName $age $otherAge $phi');

  String? address;
  address = "Jakarta";
  address = "Sibolga";

  // final phi = 3.14;
  // phi = 3.3;

  // const Base_URL = "www.enigmacamp.com";
  // Base_URL = "jutionck.co.id";

  final time = new DateTime.now();
  print(time);

  // const otherTime = new DateTime.now();
  // print(otherTime);

  List<String> fruits = ["Anggur", "Mangga", "Apel"];
  print(fruits);

  fruits.add("Jeruk");
  fruits.add("Pepaya");
  print(fruits);

  fruits.addAll(["Tomat", "Cery", "Strawberry"]);
  print(fruits[0]);

  print("Jumblah buah-buahan yang saya miliki adalah ${fruits.length}");

  fruits.removeAt(0);
  print(fruits);

  fruits.clear();
  print(fruits);

  Set<String> cars = {"Avanza", "Sigra", "Inova", "Brio"};
  print(cars);

  cars.add("Pajero");
  cars.addAll({"Raize", "Ferrari", "X Pander"});
  print(cars);

  cars.clear();

  var number = {1, 2, 3, 4, 5};
  var number2 = {1, 2, 3, 4, 5, 6, 7, 8};

  print(number.intersection(number2));

  print(number.union(number2));

  Map<String, dynamic> lectures = {
    'firstName': 'Kevin',
    'lastName': 'Subagio',
    'age': 19,
    'isStatus': true
  };

  print(lectures);
  print(lectures['firstName']);

  print(lectures.keys);
  print(lectures.values);
  lectures['age'] = 19;
  print(lectures);

  
}