void main() {
  
  print("Inicio del programa");
  
  // Llamada a la función httpGet y manejo de la respuesta usando then y catchError
  httpGet("https://cyphound.github.io/").then((value){
    print(value);
  }).catchError((err){
    print("Error: $err");
  });
  
  print("Fin del programa");
  
}

// Función que simula una petición HTTP
Future<String> httpGet(String url) {
  
  // Se usa Future.delayed para simular una demora de 1 segundo en la petición
  // y se usa throw para simular un error en la petición
  return Future.delayed(const Duration(seconds: 1), (){
    
    throw "Error en la petición HTTP";
    
    // Si no hubiera error, se puede devolver la respuesta de la petición
    // return "Respuesta de la petición HTTP";
  });
}