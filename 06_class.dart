void main() {
  
  final Hero wolverine = Hero(name: 'Logan');
  
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero { // Esta es una clase
  String name; // Estos son atributos
  String power;
  
  Hero({
    required this.name,  // Estos son parametros requeridos y otra forma de inicializar los atributos
    this.power = 'Sin poder' // Este es un parametro opcional
    });
  
 // Hero(String pName, String pPower)  // Esto es un constructor
 //   : name = pName,
 //     power = pPower;
  
  @override // Esto es un decorador y sirve para sobreescribir metodos
  String toString() { // Esto sirve para sobreescribir el metodo toString
    return '$name -- $power';
  }
}