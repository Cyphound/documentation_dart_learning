void main() async {
  
  print("Inicio del programa");
  
  try {
    // Esperamos a que se resuelva el Future y guardamos su valor en la variable value
    final value = await httpGet("https://cyphound.github.io/");
    print(value);
  } catch(err) {
    // Si ocurre un error durante la ejecución del Future, lo capturamos y mostramos un mensaje
    print("Hay un error: $err");
  }
  
  print("Fin del programa");
  
}

Future<String> httpGet(String url) async {
  
  // Esperamos un segundo antes de continuar
  await Future.delayed(const Duration(seconds: 1));
  
  // Lanzamos una excepción para simular un error durante la ejecución del Future
  throw "Error en la peticion";
  
  // Si quisieramos retornar un valor, lo haríamos de esta forma
  // return "Tenemos un valor de la peticion";
  
}
