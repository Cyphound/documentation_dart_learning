void main() {
  
  // Escuchando el stream emitido por la función emitNumbers
  emitNumbers().listen((value){
    print("Stream value $value");
  });
  
}

// Función que emite un stream de números enteros
Stream<int> emitNumbers() {
  
  // Creando un stream periódico que emite un número entero cada segundo
  // El segundo parámetro de Stream.periodic es una función que se ejecuta cada vez que se emite un valor en el stream
  return Stream.periodic(const Duration(seconds: 1), (value) {
    // En este caso, la función simplemente devuelve el valor actual del contador
    return value;
    
    // También se puede imprimir el valor emitido en el stream:
    // print("Desde periodic $value");
  })
  
  // Limitando el número de emisiones a 5 para que el stream termine
  .take(5);
  
}
