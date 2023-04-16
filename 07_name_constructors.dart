void main() {
  // Definimos un mapa que contiene datos en formato JSON
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'Power': 'Money',
    'isAlive': true
  };
  
  // Creamos una instancia de la clase Hero utilizando el constructor con nombre `fromJson()`
  final ironman = Hero.fromJson(rawJson);
  
  // Imprimimos la instancia de Hero
  print(ironman);
}

// Definimos la clase Hero
class Hero {
  // Propiedades de la clase
  String name;
  String power;
  bool isAlive;

  // Constructor de la clase
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  // Constructor con nombre que crea una instancia de la clase Hero a partir de un mapa que contiene datos en formato JSON
  Hero.fromJson(Map<String, dynamic> json) 
    : name = json['name'] ?? 'No name', // Asignamos el valor correspondiente del mapa al atributo `name`
      power = json['power'] ?? 'No power', // Asignamos el valor correspondiente del mapa al atributo `power`
      isAlive = json['isAlive'] ?? 'no alive found'; // Asignamos el valor correspondiente del mapa al atributo `isAlive`

  // Sobreescribimos el método `toString()` para imprimir la instancia de la clase Hero de manera legible
  @override
  String toString() {
    return '$name -- $power -- isAlive: ${isAlive ? 'YES' : 'Nope'}';
  }
}