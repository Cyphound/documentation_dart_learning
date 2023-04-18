abstract class Animal {}

abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

// Mixin para los animales que pueden volar
abstract class Volador {
  void volar() => print("Estoy volando!");
}

// Mixin para los animales que pueden caminar
abstract class Caminante {
  void caminar() => print("Estoy caminando!");
}

// Mixin para los animales que pueden nadar
abstract class Nadador {
  void nadar() => print("Estoy nadando!");
}

// Clase que representa un delfín, un mamífero que puede nadar
class Delfin extends Mamifero with Nadador {}

// Clase que representa un murciélago, un mamífero que puede volar y caminar
class Murcielago extends Mamifero with Volador, Caminante {}

// Clase que representa un gato, un mamífero que puede caminar
class Gato extends Mamifero with Caminante {}

// Clase que representa una paloma, un ave que puede volar y caminar
class Paloma extends Ave with Volador, Caminante {}

// Clase que representa un pato, un ave que puede volar, caminar y nadar
class Pato extends Ave with Volador, Caminante, Nadador {}

// Clase que representa un tiburón, un pez que puede nadar
class Tiburon extends Pez with Nadador {}

// Clase que representa un pez volador, un pez que puede nadar y volar
class PezVolador extends Pez with Nadador, Volador {}

void main() {
  
  // Instancia que llama a la función nadar de la clase Delfin
  final flipper = Delfin();
  flipper.nadar();
  
  // Instancia que llama a la función volar y caminar de la clase Murcielago
  final batman = Murcielago();
  batman.caminar();
  batman.volar();
  
  // Instancia que llama a la función caminar, volar y nadar de la clase Pato
  final donald = Pato();
  donald.caminar();
  donald.volar();
  donald.nadar();
}