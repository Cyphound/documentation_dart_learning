void main() {
  
  final Hero wolverine = Hero('Logan', 'Regeneracion'); // Doy los valores a los atributos de la clase
  
  print(wolverine);
  print(wolverine.name); // Accedo a los atributos de la clase
  print(wolverine.power);
}

class Hero { // Esto es una clase
  String name; // Esto son atributos
  String power;
  
  Hero(this.name, this.power); // Esto es un constructor para inicializar los atributos
  
 // Hero(String pName, String pPower)  -- Otra forma de hacer un constructor
 //   : name = pName,
 //     power = pPower;
}