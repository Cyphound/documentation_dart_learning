void main() async {
  
  print("Inicio del programa");
  
  try {
    final value = await httpGet("https://cyphound.github.io/");
    print("Exito: $value");
    
  } on Exception catch(err){
    // Esta sección se ejecuta cuando la excepción lanzada es del tipo Exception.
    // El objeto `err` es una instancia de la excepción capturada.
    print("Tenemos una exception, $err");
  } catch(err) {
    // Esta sección se ejecuta cuando la excepción lanzada no es del tipo Exception.
    // El objeto `err` es una instancia de la excepción capturada.
    print("Hay un problema: $err");
    
  } finally {
    // Esta sección siempre se ejecuta después del `try` y/o `catch`.
    print("Fin del try y catch");
  }
  
  print("Fin del programa");
}

Future<String> httpGet(String url) async {
  
  await Future.delayed(const Duration(seconds: 1));
  
  // throw "Error en la peticion";
  // Este `throw` lanza una excepción de tipo `String`, que será capturada por el `catch` genérico.
  
  throw Exception("No hay parametos en la url");
  // Este `throw` lanza una excepción de tipo `Exception`, que será capturada por el `on Exception catch(err)`.
  
  // return "Tenemos un valor de la peticion";
  // Si se desea retornar un valor en lugar de lanzar una excepción, se puede utilizar `return` en lugar de `throw`.
}