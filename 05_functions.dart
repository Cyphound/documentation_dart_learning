void main(){
  
  print(greetEveryone()); // Ejecutamos la funcion
  print(saludos());
  
  print('Suma: ${addTwoNumbers(10, 20)}'); // Ejecutamos la funcion y le pasamos los parametros
  print('Suma: ${addTwoNumbersOptional(10)}'); // Ejecutamos la funcion y le pasamos solo un parametro

  print(greetPerson(name: 'Cyphound', message: 'Hi,')); 
}

String greetEveryone() { // Esto es una funcion que devuelve un String
  return 'Hello everyone!';
}

String saludos() => 'Hola a todos!'; // Este es otra forma de hacer una funcion

int addTwoNumbers(int a, int b) => a + b; // Esta funcion acepta dos parametros y devuelve un entero sumando los dos parametros

int addTwoNumbersOptional(int a, [int b = 0 ]) { // Esta funcion acepta dos parametros pero el segundo es opcional y si no se le pasa un valor se le asigna 0
  
  // b ??= 0; --- Esto es lo mismo que lo de arriba
                                            
  return a + b;
}



String greetPerson( {required String name, String message = 'Hola, '} ) { // Esta funcion acepta dos parametros pero el segundo es opcional y si no se le pasa un valor se le asigna un valor por defecto, y el primer parametro es requerido
  return '$message $name';
}