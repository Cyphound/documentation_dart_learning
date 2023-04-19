void main() {
  emitNumbers().listen((value) {
    print("Stream value: $value");
  });
}

// Este método devuelve un Stream de enteros
Stream<int> emitNumbers() async* {
  // Creamos una lista de valores a emitir
  final valuesToEmit = [1, 2, 3, 4, 5];

  // Usamos un for para recorrer cada valor de la lista
  for (int i in valuesToEmit) {
    // Esperamos un segundo antes de continuar
    await Future.delayed(const Duration(seconds: 1));

    // Emitimos el valor actual
    yield i;
  }
}
