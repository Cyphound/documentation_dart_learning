void main(){
  // Creamos una instancia de WindPlant con una energía inicial de 9
  final windPlant = WindPlant(initialEnergy: 9);
  
  // Llamamos a la función chargePhone pasando la instancia de WindPlant como argumento y mostramos el resultado
  print('wind ${chargePhone(windPlant)}');
}

// Función que simula cargar un teléfono a través de una planta de energía
// Recibe como argumento una instancia de EnergyPlant
double chargePhone(EnergyPlant plant) {
  // Si la energía de la planta es menor a 10, lanzamos una excepción
  if(plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }
  
  // Devolvemos la cantidad de energía restante en la planta después de cargar el teléfono
  return plant.energyLeft - 10;
}

// Enumeración que define los tipos de planta de energía disponibles
enum PlantType {nuclear, wind, water}

// Clase abstracta que define los métodos y propiedades que deben implementar las clases hijas
abstract class EnergyPlant {
  
  // Propiedad que almacena la cantidad de energía restante en la planta
  double energyLeft;
  
  // Propiedad que indica el tipo de planta de energía
  PlantType type; // nuclear, wind, water 
  
  // Constructor que recibe la energía inicial y el tipo de planta
  EnergyPlant({required this.energyLeft, required this.type});
  
  // Método abstracto que deben implementar las clases hijas
  void consumeEnergy(double amount);
}

// Clase que representa una planta de energía eólica
class WindPlant extends EnergyPlant {
  
  // Constructor que recibe la energía inicial y llama al constructor de la clase padre
  WindPlant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind);
  
  // Implementación del método consumeEnergy, que reduce la energía de la planta en la cantidad indicada
  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}
