void main() {
  
  // Esto es un Map, que sirve para guardar datos de forma clave-valor
  final Map<String, dynamic> pokemon = {
    'name' : 'ditto',
    'hp' : 100,
    'isAlive' : true,
    'abilities' : <String>['impostor'],
    'sprites' : {
      1 : 'ditto/front.png',
      2 : 'ditto/back.png' 
    }
  };
  
  print(pokemon);
  print('Name: ${pokemon['name']}'); // Se puede acceder a los valores de la clave
  print('Sprites: ${pokemon['sprites']}');
  
  print('Back: ${pokemon['sprites'][2]}'); // Se puede acceder a los valores de un map dentro de otro map
  print('Front: ${pokemon['sprites'][1]}');
}